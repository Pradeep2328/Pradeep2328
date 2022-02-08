import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/common/widgets.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:granulation/models/shifting/instrument_code.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:intl/intl.dart';

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
  bool _passwordCleanedByUserVisible = false;

  final TextEditingController _checkedByUserController =
      TextEditingController();
  final TextEditingController _checkedByPasswordController =
      TextEditingController();
  bool _passwordCheckedByUserVisible = false;

  final TextEditingController _verifiedByUserController =
      TextEditingController();
  final TextEditingController _verifiedByPasswordController =
      TextEditingController();
  bool _passwordVerifiedByUserVisible = false;

  final TextEditingController _instrumentCleanRemarkController =
      TextEditingController();
  int _instrumentClean = 0;

  final TextEditingController _instrumentLogbookUpdatedRemarkController =
      TextEditingController();
  int _instrumentLogbookUpdated = 0;

  final DateRangePickerController _datePickerController =
      DateRangePickerController();
  bool _datePickerVisible = false;

  final TextEditingController _cleaningRemarkController =
      TextEditingController();

  final TextEditingController _dateTextFieldController =
      TextEditingController();

  final RoundedLoadingButtonController _nextButtonController =
      RoundedLoadingButtonController();

  @override
  void initState() {
    super.initState();
    _datePickerController.displayDate = DateTime.now();
    _datePickerController.selectedDate = DateTime.now();
    _datePickerController.view = DateRangePickerView.month;
  }

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
                TextFormField(
                  controller: _dateTextFieldController,
                  readOnly: true,
                  //initialValue: ,
                  decoration: InputDecoration(
                    label: const Text('Cleaned On (DD-MM-YYYY)'),
                    hintText: 'Select the date for instrument cleaning',
                    suffixIcon: IconButton(
                      onPressed: () => setState(() {
                        _datePickerVisible = true;
                      }),
                      icon: const Icon(Icons.date_range),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select the date on which the instrument was cleaned'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                Visibility(
                  visible: _datePickerVisible,
                  child: SfDateRangePicker(
                    controller: _datePickerController,
                    showActionButtons: true,
                    showTodayButton: true,
                    onCancel: () => setState(
                      () {
                        _datePickerVisible = false;
                      },
                    ),
                    onSubmit: (p0) {
                      final DateFormat formatter = DateFormat('dd-MM-yyyy');
                      String date = formatter.format(p0 as DateTime);
                      _dateTextFieldController.text = date;
                      setState(() {
                        _datePickerVisible = false;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Cleaned By User Name
                TextFormField(
                  controller: _cleanedByUserController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Cleaned By'),
                    hintText: 'Enter your Cleaned By',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Cleaned By'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Cleaned By User Password
                TextFormField(
                  obscureText: _passwordCleanedByUserVisible,
                  controller: _cleanedByPasswordController,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() => _passwordCleanedByUserVisible =
                            !_passwordCleanedByUserVisible);
                      },
                      icon: Icon(!_passwordCleanedByUserVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    label: const Text('Cleaned By Password'),
                    hintText: 'Enter your Cleaned By Password',
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Cleaned By Password'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Checked By User Name
                TextFormField(
                  controller: _checkedByUserController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Checked By'),
                    hintText: 'Enter your Checked By',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Checked By'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Checked By User Password
                TextFormField(
                  obscureText: _passwordCheckedByUserVisible,
                  controller: _checkedByPasswordController,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() => _passwordCheckedByUserVisible =
                            !_passwordCheckedByUserVisible);
                      },
                      icon: Icon(!_passwordCheckedByUserVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    label: const Text('Checked By Password'),
                    hintText: 'Enter your Checked By Password',
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Checked By Password'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Verified By User Name
                TextFormField(
                  controller: _verifiedByUserController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Verified By'),
                    hintText: 'Enter your Verified By',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Verified By'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // * Verified By User Password
                TextFormField(
                  obscureText: _passwordVerifiedByUserVisible,
                  controller: _verifiedByPasswordController,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() => _passwordVerifiedByUserVisible =
                            !_passwordVerifiedByUserVisible);
                      },
                      icon: Icon(!_passwordVerifiedByUserVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    label: const Text('Verified By Password'),
                    hintText: 'Enter your Verified By Password',
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Verified By Password'; //Validation error
                    }
                    return null; //Validation Success
                  },
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
