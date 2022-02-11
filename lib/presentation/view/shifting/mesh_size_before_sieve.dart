import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/drop_down_search/ipc_id_list.dart';
import 'package:granulation/models/drop_down_search/ipc_next_step.dart';
import 'package:granulation/models/drop_down_search/ipc_status_list.dart';
import 'package:granulation/models/sifting/mesh_size_sieve.dart';
import 'package:granulation/presentation/view/common_widgets/authentication_widget.dart';
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
  String meshSizeSieve = '';
  String ipcId = '';
  final TextEditingController _integrityDrynessSieveRemarkController =
      TextEditingController();
  final TextEditingController _tareWeightIpcController =
      TextEditingController();
  final Ref<String> _unit = Ref<String>('kg'); //Default Unit
  final Ref<String> nextStep = Ref<String>('');

  //Enable Flag
  final Ref<bool> nextStepEnabled = Ref(false);
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
                      SiftingUrl.ipcId,
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
                WeightInputWidget(
                  controller: _tareWeightIpcController,
                  label: 'Tare Weight for IPC',
                  unit: _unit,
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
                      SiftingUrl.ipcStatus,
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
                  url: SiftingUrl.nextStep,
                  label: 'Next Step',
                  itemSelected: nextStep,
                  enabled: nextStepEnabled,
                  jsonDecode: nextStepDecodeJson,
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
                            'Tare Weight : ${_tareWeightIpcController.text} ${_unit.ref}');
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
                            'Tare Weight : ${_tareWeightIpcController.text} ${_unit.ref}');
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
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          print(
                              'Tare Weight : ${_tareWeightIpcController.text} ${_unit.ref}');
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
}
