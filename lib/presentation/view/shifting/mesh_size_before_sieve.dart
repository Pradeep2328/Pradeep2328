import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/ipc_id_list.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:granulation/models/shifting/mesh_size_sieve.dart';
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
                    return meshSize!.meshSize.toList();
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
                  label: 'Integrity and Dryness of Sieve (Before Sieving)',
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
                Row(
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
}
