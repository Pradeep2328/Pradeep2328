import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/drop_down_search/ipc_id_list.dart';
import 'package:granulation/models/drop_down_search/ipc_next_step.dart';
import 'package:granulation/models/drop_down_search/ipc_status_list.dart';
import 'package:granulation/models/sifting/material_sifted.dart';
import 'package:granulation/models/sifting/mesh_size_sieve.dart';
import 'package:granulation/presentation/view/common_widgets/authentication_widget.dart';
import 'package:granulation/presentation/view/common_widgets/date_time_widget.dart';
import 'package:granulation/presentation/view/common_widgets/selction_widget.dart';
import 'package:granulation/presentation/view/common_widgets/test_operation_widget.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:reference_wrapper/reference_wrapper.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class MeshSizeBeforeSieve extends StatefulWidget {
  const MeshSizeBeforeSieve({Key? key}) : super(key: key);

  @override
  State<MeshSizeBeforeSieve> createState() => _MeshSizeBeforeSieveState();
}

class _MeshSizeBeforeSieveState extends State<MeshSizeBeforeSieve> {
  final TextEditingController _operatorNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RoundedLoadingButtonController _nextButtonController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController _changeIpcButtonController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController _changeSieveButtonController =
      RoundedLoadingButtonController();

  // ? Final Data
  String meshSizeSieve = '';
  String ipcId = '';
  final _integrityDrynessSieveRemarkController = TextEditingController();
  final _tareWeightIpcController = TextEditingController();
  final Ref<String> _unitTare = Ref<String>('kg'); //Default Unit
  final Ref<String> nextStep = Ref<String>('');
  final Ref<String> lebelHeader = Ref<String>('');
  final _useBeforeController = TextEditingController();
  final _sifterStartTime = TextEditingController();
  final _sifterStopTime = TextEditingController();
  final List<String> materialSifted = [];
  final _abnormalityRetainedPowderController = TextEditingController();
  final _grossWeightIpcController = TextEditingController();
  final Ref<String> _unitGross = Ref<String>('kg');
  final _netWeightIpcController = TextEditingController();
  final _retainedPowderController = TextEditingController();
  final Ref<String> _retainedPowderUnit = Ref<String>('kg');
  //Enable Flag
  final Ref<bool> nextStepEnabled = Ref(false);
  final Ref<bool> labelHeaderEnabled = Ref(false);
  final Ref<bool> materialSiftedEnabled = Ref(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainScaffold.appBar('Sifting'),
      drawer: MainScaffold.drawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                UsernameTextFormField(
                  controller: _operatorNameController,
                  label: 'Operator Name',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Mesh Size of Sieve
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('Mesh Size of Sieve'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Mesh Size of Sieve';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      SiftingUrl.meshSize,
                    );
                    if (response.statusCode != 200) {}
                    final meshSize = MeshSizeSieve.fromJson(
                        response.data); // .getInstrumentCodes(response.data);
                    return meshSize.meshSize.toList();
                  },
                  onChanged: (value) => setState(
                    () {
                      meshSizeSieve = value ?? '';
                    },
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Integrity and Dryness of Sieve (Before Sieving) Check and Remark
                ToogleRemarkWidget(
                  textController: _integrityDrynessSieveRemarkController,
                  label: 'Integrity and Dryness of Sieve\n(Before Sieving)',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Mesh Size - Only for Instrument Type Sieve
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('IPC ID'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select IPC ID';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      DropDownUrl.ipcId,
                    );
                    if (response.statusCode != 200) {}
                    final ipcIdList = IpcIdList.fromJson(response.data);
                    return ipcIdList.ipcIdList.toList();
                  },
                  onChanged: (value) => setState(
                    () {
                      ipcId = value ?? '';
                    },
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Tare Weight of IPC
                WeightInputWidget(
                  controller: _tareWeightIpcController,
                  label: 'Tare Weight for IPC',
                  unit: _unitTare,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * IPC Status
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('IPC Status'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select IPC Status';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      DropDownUrl.ipcStatus,
                    );
                    if (response.statusCode != 200) {}
                    final ipcStatusList = IpcStatusList.fromJson(response.data);
                    return ipcStatusList.ipcStatus.toList();
                  },
                  onChanged: (value) => setState(
                    () {
                      ipcId = value ?? '';
                    },
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Next Step
                DropDownSearchSingleItemSelect(
                  url: DropDownUrl.nextStep,
                  label: 'Next Step',
                  itemSelected: nextStep,
                  enabled: nextStepEnabled,
                  jsonDecode: nextStepDecodeJson,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Label Header
                DropDownSearchSingleItemSelect(
                  url: DropDownUrl.labelHeader,
                  label: 'Label Header',
                  itemSelected: lebelHeader,
                  enabled: labelHeaderEnabled,
                  jsonDecode: labelHeaderDecodeJson,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * User Before
                DatePicker(
                  controller: _useBeforeController,
                  label: 'Use Before',
                  hintLabel: 'Please Select the date to use material brfore',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // *  Sifter Start Time
                GetTimeWidget(
                  controller: _sifterStartTime,
                  label: 'Sifter Start Time',
                  mode: TimeWidgetEvent.Start,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // *  Materials Sifted
                DropDownSearchMultiItemSelect(
                  enabled: materialSiftedEnabled,
                  label: 'Materials Sifted',
                  url: SiftingUrl.materialSifted,
                  jsonDecode: materialSiftedDecodeJson,
                  itemSelected: materialSifted,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // *  Sifter Stop Time
                GetTimeWidget(
                  controller: _sifterStopTime,
                  label: 'Sifter Stop Time',
                  mode: TimeWidgetEvent.Stop,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Tare Weight of IPC
                WeightInputWidget(
                  controller: _grossWeightIpcController,
                  label: 'Gross Weight of Materials Sifted',
                  unit: _unitGross,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                ReadOnlyTextWidget(
                  controller: _netWeightIpcController,
                  label: 'Net Weight of Sieved Material',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Abnormality in retained powder
                // ! Change to yes and no
                ToogleRemarkWidget(
                  textController: _abnormalityRetainedPowderController,
                  label: 'Abnormality in retained powder',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                WeightInputWidget(
                  controller: _retainedPowderController,
                  label: 'Quantity of retained powder',
                  unit: _retainedPowderUnit,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedLoadingButton(
                      onPressed: () async {
                        // Validate returns true if the form is valid, or false otherwise.

                        print(
                            'Tare Weight : ${_tareWeightIpcController.text} ${_unitTare.ref}');
                        // TODO Implement uncomment return and success
                        // _changeIpcButtonController.success();
                        // return;
                        _changeIpcButtonController.error();
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        _changeIpcButtonController.reset();
                      },
                      controller: _changeIpcButtonController,
                      child: const Text('Change IPC'),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    RoundedLoadingButton(
                      onPressed: () async {
                        // Validate returns true if the form is valid, or false otherwise.
                        print(
                            'Tare Weight : ${_tareWeightIpcController.text} ${_unitTare.ref}');
                        // TODO Implement uncomment return and success
                        // _changeSieveButtonController.success();
                        // return;

                        _changeSieveButtonController.error();
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        _changeSieveButtonController.reset();
                      },
                      controller: _changeSieveButtonController,
                      child: const Text('Change Sieve'),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    RoundedLoadingButton(
                      onPressed: () async {
                        print('Items Selected $materialSifted');
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // TODO Implement uncomment return and success
                          // _nextButtonController.success();
                          // return;
                        }
                        _nextButtonController.error();
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        _nextButtonController.reset();
                      },
                      controller: _nextButtonController,
                      child: const Text('Next'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> nextStepDecodeJson(String plainText) {
    final list = IpcNextStep.fromJson(plainText);
    return list.ipcNextStep.toList();
  }

  List<String> labelHeaderDecodeJson(String plainText) {
    final list = IpcNextStep.fromJson(plainText);
    return list.ipcNextStep.toList();
  }

  List<String> materialSiftedDecodeJson(String plainText) {
    final list = MaterialSifted.fromJson(plainText);
    return list.materialsSifted.toList();
  }
}
