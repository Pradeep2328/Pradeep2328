import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:granulation/api/decoders/dropdown_search_decoders.dart';
import 'package:granulation/common/urls.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:granulation/models/sifting/instrument_code.dart';

import 'package:granulation/presentation/view/common_widgets/authentication_widget.dart';
import 'package:granulation/presentation/view/common_widgets/date_time_widget.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:reference_wrapper/reference_wrapper.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../common/global.dart';
import '../../../models/drop_down_search/ipc_next_step.dart';
import '../common_widgets/selction_widget.dart';

class ShiftingInstrumentClearance extends StatefulWidget {
  const ShiftingInstrumentClearance({Key? key}) : super(key: key);

  @override
  State<ShiftingInstrumentClearance> createState() =>
      _ShiftingInstrumentClearanceState();
}

class _ShiftingInstrumentClearanceState
    extends State<ShiftingInstrumentClearance> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // ? Bellow Variable hold the slected values for dropdown serach field
  String instrumentCode = '';
  String meshSize = '';
  String screenSize = '';
  String productCode = '';
  String previousProductBatchNumber = '';
  String cleaningType = '';

  static const List<String> _instrumentType = [
    // ! Don't change the text (spelling) as Mesh Size and SS Screen Index is dependent on the spelling
    'Vibratory Sifter',
    'Sieve',
    'SS Screen',
  ];

  int _selectedInstrumentType = 0;

  final TextEditingController _previousProductName = TextEditingController();

  final TextEditingController _cleanedByUserController =
      TextEditingController();
  final TextEditingController _cleanedByPasswordController =
      TextEditingController();

  final TextEditingController _checkedByUserController =
      TextEditingController();
  final TextEditingController _checkedByPasswordController =
      TextEditingController();

  final TextEditingController _verifiedByUserController =
      TextEditingController();
  final TextEditingController _verifiedByPasswordController =
      TextEditingController();

  final TextEditingController _instrumentCleanRemarkController =
      TextEditingController();
  int _instrumentClean = 0;

  final TextEditingController _instrumentLogbookUpdatedRemarkController =
      TextEditingController();
  int _instrumentLogbookUpdated = 0;

  final TextEditingController _cleaningRemarkController =
      TextEditingController();

  final TextEditingController _dateTextFieldController =
      TextEditingController();

  final RoundedLoadingButtonController _nextButtonController =
      RoundedLoadingButtonController();

  final Ref<String> _instrumentTypeRef = Ref<String>('');
  final Ref<String> _instrumentCode = Ref<String>('');
  final Ref<String> productCode1 = Ref<String>('');
  final Ref<String> productBatchNumber1 = Ref<String>('');
  final Ref<String> cleaningType1 = Ref<String>('');

  final bool instrumentCodeEnabled = true;
  final bool instrumentTypeEnabled = true;
  final bool productCodeEnabled = true;
  final bool productBatchEnabled = true;
  final bool cleaningTypeEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainScaffold.drawer(context),
      appBar: AppBar(
        title: const Text('Shifting - Instrument Clearance'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(
              25.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // DropDownSearchSingleItemSelect(
                //   url: SiftingUrl.instrumentTypeUrl,
                //   label: 'Instrument Type',
                //   itemSelected: instrumentType1,
                //   enabled: instrumentTypeEnabled,
                //   jsonDecode: nextStepDecodeJson,
                // ),
                // DropdownButtonFormField<String>(
                //   isExpanded: true,
                //   decoration: const InputDecoration(
                //     label: Text('Instrument Code'),
                //     focusColor: Colors.blue,
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         style: BorderStyle.solid,
                //       ),
                //     ),
                //   ),
                //   icon: const Icon(Icons.arrow_drop_down),
                //   value: _instrumentType[_selectedInstrumentType],
                //   items: _instrumentType
                //       .map<DropdownMenuItem<String>>(
                //         (String value) => DropdownMenuItem<String>(
                //           value: value,
                //           child: Text(value),
                //         ),
                //       )
                //       .toList(),
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       _selectedInstrumentType =
                //           _instrumentType.indexOf(newValue!);
                //     });
                //   },
                // ),

                DropDownSearchSingleItemSelect(
                  url: ServerConfiguration.serverUri +
                      SiftingUrl.instrumentTypeUrl,
                  label: 'Instrument Type',
                  itemSelected: _instrumentTypeRef,
                  enabled: true,
                  retriveItemList:
                      CommonDropDownSearchJsonDecoder.getInstrumentType,
                  callback: reRenderUi,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                DropDownSearchSingleItemSelect(
                  url: ServerConfiguration.serverUri +
                      SiftingUrl.instrumentCodeUrl,
                  label: 'Instrument Code',
                  itemSelected: _instrumentCode,
                  enabled: true,
                  retriveItemList:
                      CommonDropDownSearchJsonDecoder.getInstrumentCode,
                  callback: reRenderUi,
                ),
                // * Instrument Code
                // DropDownSearchSingleItemSelect(
                //   url: SiftingUrl.instrumentCodeUrl,
                //   label: 'Instrument Code',
                //   itemSelected: instrumentCode1,
                //   enabled: instrumentCodeEnabled,
                //   jsonDecode: nextStepDecodeJson,
                // ),
                // DropdownSearch<String>(
                //   mode: Mode.MENU,
                //   showSelectedItems: true,
                //   showSearchBox: true,
                //   showAsSuffixIcons: true,
                //   dropdownSearchDecoration: const InputDecoration(
                //     label: Text('Instrument Code'),
                //     focusColor: Colors.blue,
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         style: BorderStyle.solid,
                //       ),
                //     ),
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please select Instrument Code';
                //     }
                //     return null;
                //   },
                //   // ! Uncomment once InstrumentCode is generated
                //   // onFind: (text) async {
                //   //   var response = await Dio().get(
                //   //     SiftingUrl.instrumentCodeUrl,
                //   //   );
                //   //   if (response.statusCode != 200) {}
                //   //   var instrumentCodes =
                //   //       InstrumentCode.getInstrumentCodes(response.data);
                //   //   return instrumentCodes;
                //   // },
                //   onChanged: (value) => setState(
                //     () {
                //       instrumentCode = value ?? '';
                //     },
                //   ),
                // ),
                // * Mesh Size - Only for Instrument Type Sieve
                Visibility(
                  visible: _selectedInstrumentType ==
                          _instrumentType.indexOf('Sieve')
                      ? true
                      : false,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      showSearchBox: true,
                      showAsSuffixIcons: true,
                      dropdownSearchDecoration: const InputDecoration(
                        label: Text('Mesh Size'),
                        focusColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select Mesh Size';
                        }
                        return null;
                      },
                      // ! Uncomment once InstrumentCode is generated
                      // onFind: (text) async {
                      //   var response = await Dio().get(
                      //     SiftingUrl.meshSize,
                      //   );
                      //   if (response.statusCode != 200) {}
                      //   var instrumentCodes =
                      //       InstrumentCode.getInstrumentCodes(
                      //           response.data);
                      //   return instrumentCodes;
                      // },
                      onChanged: (value) => setState(
                        () {
                          meshSize = value ?? '';
                        },
                      ),
                    ),
                  ),
                ),
                // * Screen Size - Only for Instrument Type : SS Screen
                Visibility(
                  visible: _selectedInstrumentType ==
                          _instrumentType.indexOf('SS Screen')
                      ? true
                      : false,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      showSearchBox: true,
                      showAsSuffixIcons: true,
                      dropdownSearchDecoration: const InputDecoration(
                        label: Text('Screen Size'),
                        focusColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select Screen Size';
                        }
                        return null;
                      },
                      // ! Uncomment once InstrumentCode is generated
                      // onFind: (text) async {
                      //   var response = await Dio().get(
                      //     SiftingUrl.screenSize,
                      //   );
                      //   if (response.statusCode != 200) {}
                      //   var instrumentCodes =
                      //       InstrumentCode.getInstrumentCodes(
                      //           response.data);
                      //   return instrumentCodes;
                      // },
                      onChanged: (value) => setState(
                        () {
                          screenSize = value ?? '';
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Previous Product Code

                // DropDownSearchSingleItemSelect(
                //   url: DropDownUrl.productCodeUrl,
                //   label: 'Previous Product Code',
                //   itemSelected: productCode1,
                //   enabled: productCodeEnabled,
                //   jsonDecode: nextStepDecodeJson,
                // ),
                // DropdownSearch<String>(
                //   mode: Mode.MENU,
                //   showSelectedItems: true,
                //   showSearchBox: true,
                //   showAsSuffixIcons: true,
                //   dropdownSearchDecoration: const InputDecoration(
                //     label: Text('Previous Product Code'),
                //     focusColor: Colors.blue,
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         style: BorderStyle.solid,
                //       ),
                //     ),
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please select Previous Product Code';
                //     }
                //     return null;
                //   },
                //   // ! Uncomment once InstrumentCode is generated
                //   // onFind: (text) async {
                //   //   var response = await Dio().get(
                //   //     SiftingUrl.previousProductCodeUrl,
                //   //   );
                //   //   if (response.statusCode != 200) {}
                //   //   var instrumentCodes =
                //   //       InstrumentCode.getInstrumentCodes(response.data);
                //   //   return instrumentCodes;
                //   // },
                //   onChanged: (value) => setState(
                //     () {
                //       productCode = value ?? '';
                //     },
                //   ),
                // ),
                const SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  controller: _previousProductName,
                  readOnly: true,
                  decoration: const InputDecoration(
                    label: Text('Previous Product Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),

                // DropDownSearchSingleItemSelect(
                //   url: SiftingUrl.previousProductBatchNumberUrl,
                //   label: 'Previous Product Batch Number',
                //   itemSelected: productBatchNumber1,
                //   enabled: productBatchEnabled,
                //   jsonDecode: nextStepDecodeJson,
                // ),
                // DropdownSearch<String>(
                //   mode: Mode.MENU,
                //   showSelectedItems: true,
                //   showSearchBox: true,
                //   showAsSuffixIcons: true,
                //   dropdownSearchDecoration: const InputDecoration(
                //     label: Text('Previous Product Batch Number'),
                //     focusColor: Colors.blue,
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         style: BorderStyle.solid,
                //       ),
                //     ),
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please select Previous Product Batch Number';
                //     }
                //     return null;
                //   },
                //   // ! Uncomment once InstrumentCode is generated
                //   // onFind: (text) async {
                //   //   var response = await Dio().get(
                //   //     SiftingUrl.previousProductBatchNumberUrl,
                //   //   );
                //   //   if (response.statusCode != 200) {}
                //   //   var instrumentCodes =
                //   //       InstrumentCode.getInstrumentCodes(response.data);
                //   //   return instrumentCodes;
                //   // },
                //   onChanged: (value) => setState(
                //     () {
                //       previousProductBatchNumber = value ?? '';
                //     },
                //   ),
                // ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Instrument Clean
                ToogleRemarkWidget(
                  label: 'Instrument Clean',
                  textController: _instrumentCleanRemarkController,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                //Instrument Logbook Updated
                ToogleRemarkWidget(
                  label: 'Instrument Logbook Updated',
                  textController: _instrumentLogbookUpdatedRemarkController,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Cleaning Type

                // DropDownSearchSingleItemSelect(
                //   url: SiftingUrl.cleaningType,
                //   label: 'Cleaning Type',
                //   itemSelected: cleaningType1,
                //   enabled: cleaningTypeEnabled,
                //   jsonDecode: nextStepDecodeJson,
                // ),
                // DropdownSearch<String>(
                //   mode: Mode.MENU,
                //   showSelectedItems: true,
                //   showSearchBox: true,
                //   showAsSuffixIcons: true,
                //   dropdownSearchDecoration: const InputDecoration(
                //     label: Text('Cleaning Type'),
                //     focusColor: Colors.blue,
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         style: BorderStyle.solid,
                //       ),
                //     ),
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please select Cleaning Type';
                //     }
                //     return null;
                //   },
                //   // ! Uncomment once InstrumentCode is generated
                //   // onFind: (text) async {
                //   //   var response = await Dio().get(
                //   //     SiftingUrl.cleaningType,
                //   //   );
                //   //   if (response.statusCode != 200) {}
                //   //   var instrumentCodes =
                //   //       InstrumentCode.getInstrumentCodes(response.data);
                //   //   return instrumentCodes;
                //   // },
                //   onChanged: (value) => setState(
                //     () {
                //       cleaningType = value ?? '';
                //     },
                //   ),
                // ),
                const SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  minLines: 5,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  controller: _cleaningRemarkController,
                  decoration: const InputDecoration(
                    label: Text('Cleaning Remark'),
                    hintText: 'Enter Cleaning Remark',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Cleaned On
                DatePicker(
                  controller: _dateTextFieldController,
                  label: 'Cleaned On',
                  hintLabel: 'Please Select the date of instrument cleaning',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Cleaned By User Name
                UsernameTextFormField(
                  controller: _cleanedByUserController,
                  label: 'Cleaned By',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Cleaned By User Password
                PasswordFormField(
                  controller: _cleanedByPasswordController,
                  label: 'Cleaned by Password',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Checked By User Name
                UsernameTextFormField(
                  controller: _checkedByUserController,
                  label: 'Checked By',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Checked By User Password
                PasswordFormField(
                  controller: _checkedByPasswordController,
                  label: 'Checked by Password',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Verified By User Name
                UsernameTextFormField(
                  controller: _verifiedByUserController,
                  label: 'Verfied By',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Verified By User Password
                PasswordFormField(
                  controller: _verifiedByPasswordController,
                  label: 'Verfied by Password',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                RoundedLoadingButton(
                  onPressed: () async {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      final cleanedByUserName = _cleanedByUserController.text;
                      final cleanedByPassword =
                          _cleanedByPasswordController.text;
                      final checkedByUserName = _checkedByUserController.text;
                      final checkedByPassword =
                          _checkedByPasswordController.text;
                      final verifiedByUserName = _verifiedByUserController.text;
                      final verifiedByPassword =
                          _verifiedByPasswordController.text;
                      _nextButtonController.success();
                      return;
                    }
                    _nextButtonController.error();
                    await Future.delayed(const Duration(milliseconds: 1500));
                    _nextButtonController.reset();
                  },
                  controller: _nextButtonController,
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void reRenderUi() => setState(() {});
}

List<String> nextStepDecodeJson(String plainText) {
  final list = IpcNextStep.fromJson(plainText);
  return list.ipcNextStep.toList();
}
