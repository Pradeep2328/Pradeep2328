import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:granulation/models/shifting/instrument_code.dart';
import 'package:granulation/presentation/view/common_widgets/authentication_widget.dart';
import 'package:granulation/presentation/view/common_widgets/date_time_widget.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

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
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: const InputDecoration(
                    label: Text('Instrument Code'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  value: _instrumentType[_selectedInstrumentType],
                  items: _instrumentType
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedInstrumentType =
                          _instrumentType.indexOf(newValue!);
                    });
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Instrument Code
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('Instrument Code'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Instrument Code';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      SiftingUrl.instrumentCodeUrl,
                    );
                    if (response.statusCode != 200) {}
                    var instrumentCodes =
                        InstrumentCodeModel.getInstrumentCodes(response.data);
                    return instrumentCodes;
                  },
                  onChanged: (value) => setState(
                    () {
                      instrumentCode = value ?? '';
                    },
                  ),
                ),
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
                      onFind: (text) async {
                        var response = await Dio().get(
                          SiftingUrl.meshSize,
                        );
                        if (response.statusCode != 200) {}
                        var instrumentCodes =
                            InstrumentCodeModel.getInstrumentCodes(
                                response.data);
                        return instrumentCodes;
                      },
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
                      onFind: (text) async {
                        var response = await Dio().get(
                          SiftingUrl.screenSize,
                        );
                        if (response.statusCode != 200) {}
                        var instrumentCodes =
                            InstrumentCodeModel.getInstrumentCodes(
                                response.data);
                        return instrumentCodes;
                      },
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
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('Previous Product Code'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Previous Product Code';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      SiftingUrl.previousProductCodeUrl,
                    );
                    if (response.statusCode != 200) {}
                    var instrumentCodes =
                        InstrumentCodeModel.getInstrumentCodes(response.data);
                    return instrumentCodes;
                  },
                  onChanged: (value) => setState(
                    () {
                      productCode = value ?? '';
                    },
                  ),
                ),
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
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('Previous Product Batch Number'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Previous Product Batch Number';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      SiftingUrl.previousProductBatchNumberUrl,
                    );
                    if (response.statusCode != 200) {}
                    var instrumentCodes =
                        InstrumentCodeModel.getInstrumentCodes(response.data);
                    return instrumentCodes;
                  },
                  onChanged: (value) => setState(
                    () {
                      previousProductBatchNumber = value ?? '';
                    },
                  ),
                ),
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
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  showSearchBox: true,
                  showAsSuffixIcons: true,
                  dropdownSearchDecoration: const InputDecoration(
                    label: Text('Cleaning Type'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Cleaning Type';
                    }
                    return null;
                  },
                  onFind: (text) async {
                    var response = await Dio().get(
                      SiftingUrl.cleaningType,
                    );
                    if (response.statusCode != 200) {}
                    var instrumentCodes =
                        InstrumentCodeModel.getInstrumentCodes(response.data);
                    return instrumentCodes;
                  },
                  onChanged: (value) => setState(
                    () {
                      cleaningType = value ?? '';
                    },
                  ),
                ),
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
}
