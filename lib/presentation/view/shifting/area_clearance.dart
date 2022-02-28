// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:reference_wrapper/reference_wrapper.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

import '../../../models/drop_down_search/ipc_next_step.dart';
import '../common_widgets/selction_widget.dart';

class AreaClearnce extends StatefulWidget {
  const AreaClearnce({Key? key}) : super(key: key);

  _AreaClearanceState createState() => _AreaClearanceState();
}

class _AreaClearanceState extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String cleaningType = '';
  String instrumentCode = '';
  static const List<String> _instrumentType = [
    // ! Don't change the text (spelling) as Mesh Size and SS Screen Index is dependent on the spelling
    '123',
    '456',
    '789',
  ];

  final Ref<String> _unitTemperature = Ref<String>('C');

  final TextEditingController _instrumentProductName = TextEditingController();
  int _productName = 0;

  final TextEditingController _instrumentsetTemperature =
      TextEditingController();
  int _setTemperature = 0;

  final TextEditingController _instrumentLimit = TextEditingController();
  int _limit = 0;

  final TextEditingController _instrumentActualTemperature =
      TextEditingController();
  int _actualTemparature = 0;

  final TextEditingController _instrumentsetRelativeHumidity =
      TextEditingController();
  int _setRelativeHumidity = 0;

  final TextEditingController _instrumentHumidityLimit =
      TextEditingController();
  int _humiditylimit = 0;

  final TextEditingController _instrumentActualRelativeHumidity =
      TextEditingController();
  int _actualRelativeHumidity = 0;

  final TextEditingController _instrumentDifferentialPressure =
      TextEditingController();
  int _differentialPressure = 0;

  final TextEditingController _instrumentPressureLimit =
      TextEditingController();
  int _pressurelimit = 0;

  final TextEditingController _instrumentActualDifferentialPressure =
      TextEditingController();
  int _actualDifferentialPressure = 0;

  final TextEditingController _wasteBinsClearedController =
      TextEditingController();
  int _wastebinscleared = 0;

  final TextEditingController _areaCleanController = TextEditingController();

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

  final Ref<String> previousProductCode = Ref<String>('');
  final Ref<String> productBatchNumber = Ref<String>('');

  //Enable Flag
  final bool productCodeEnabled = true;
  final bool productBatchNumberBool = true;

  int _selectedInstrumentType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainScaffold.drawer(context),
        appBar: AppBar(
          title: const Text('Shifting - Area Clearance'),
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
                  DropDownSearchSingleItemSelect(
                    url: DropDownUrl.productCodeUrl,
                    label: 'Previous Product Code',
                    itemSelected: previousProductCode,
                    enabled: productCodeEnabled,
                    jsonDecode: nextStepDecodeJson,
                  ),
                  // DropdownButtonFormField<String>(
                  //   isExpanded: true,
                  //   decoration: const InputDecoration(
                  //     label: Text('Previous Product Code'),
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

                  const SizedBox(
                    height: 25.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text('Product Name: '),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          enabled: _productName == 0 ? false : true,
                          controller: _instrumentProductName,
                          decoration: const InputDecoration(
                            label: Text('Previous Product Name'),
                            hintText: 'Enter Previous Product Name',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (_productName == 1 &&
                                (value == null || value.isEmpty)) {
                              return 'Please enter Product Name'; //Validation error
                            }
                            return null; //Validation Success
                          },
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  DropDownSearchSingleItemSelect(
                    url: SiftingUrl.previousProductBatchNumberUrl,
                    label: 'Previous Product Batch Number',
                    itemSelected: productBatchNumber,
                    enabled: productBatchNumberBool,
                    jsonDecode: nextStepDecodeJson,
                  ),
                  // DropdownButtonFormField<String>(
                  //   isExpanded: true,
                  //   decoration: const InputDecoration(
                  //     label: Text('Previous Batch Number'),
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

                  const SizedBox(
                    height: 25.0,
                  ),

                  ToogleRemarkWidget(
                    label: 'Waste Bins Cleared',
                    textController: _wasteBinsClearedController,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   mainAxisSize: MainAxisSize.max,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     const Expanded(
                  //       flex: 2,
                  //       child: Text('Waste Bins Cleared: '),
                  //     ),
                  //     Expanded(
                  //       flex: 3,
                  //       child: Center(
                  //         child: ToggleSwitch(
                  //           totalSwitches: 2,
                  //           initialLabelIndex: _wastebinscleared,
                  //           labels: const ['Ok', 'Not Ok'],
                  //           //TODO Change Okay Icon
                  //           activeBgColors: const [
                  //             [Colors.green],
                  //             [Colors.red]
                  //           ],
                  //           minWidth: 85.0,
                  //           animate: true,
                  //           onToggle: (index) {
                  //             if (index == 0) {
                  //               _wasteBinsClearedController.clear();
                  //             }
                  //             setState(() {
                  //               _wastebinscleared = index;
                  //             });
                  //           },
                  //           cornerRadius: 20.0,
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       flex: 5,
                  //       child: TextFormField(
                  //         enabled: _wastebinscleared == 0 ? false : true,
                  //         controller: _wasteBinsClearedController,
                  //         decoration: const InputDecoration(
                  //           icon: Icon(Icons.note_add),
                  //           label: Text('Waste Bins Cleared Remark'),
                  //           hintText: 'Enter Remark',
                  //           border: OutlineInputBorder(),
                  //         ),
                  //         validator: (value) {
                  //           if (_wastebinscleared == 1 &&
                  //               (value == null || value.isEmpty)) {
                  //             return 'Please enter Instrument Cleaned By'; //Validation error
                  //           }
                  //           return null; //Validation Success
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  // WeightInputWidget(
                  //   controller: _wasteBinsClearedController,
                  //   label: 'Set Temperature',
                  //   unit: _unitTemperature,
                  // ),

                  TextFormField(
                    enabled: _setTemperature == 0 ? false : true,
                    controller: _instrumentsetTemperature,
                    decoration: const InputDecoration(
                      label: Text('Set Temperature'),
                      hintText: 'Enter Temperature',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_setTemperature == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Temperature'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _limit == 0 ? false : true,
                    controller: _instrumentLimit,
                    decoration: const InputDecoration(
                      label: Text('Set Limit'),
                      hintText: 'Enter Limit',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_limit == 1 && (value == null || value.isEmpty)) {
                        return 'Please enter Limit'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _actualTemparature == 0 ? false : true,
                    controller: _instrumentActualTemperature,
                    decoration: const InputDecoration(
                      label: Text('Actual Temperature'),
                      hintText: 'Enter Actual Temperature',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_actualTemparature == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Actual Temperature'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _setRelativeHumidity == 0 ? false : true,
                    controller: _instrumentsetRelativeHumidity,
                    decoration: const InputDecoration(
                      label: Text('Set Relative Humidity'),
                      hintText: 'Enter Relative Humidity',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_setRelativeHumidity == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Relative Humidity'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _humiditylimit == 0 ? false : true,
                    controller: _instrumentHumidityLimit,
                    decoration: const InputDecoration(
                      label: Text('Limit(%)'),
                      hintText: 'Enter Limit',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_humiditylimit == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Limit'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _actualRelativeHumidity == 0 ? false : true,
                    controller: _instrumentActualRelativeHumidity,
                    decoration: const InputDecoration(
                      label: Text('Actual Relative Humidity'),
                      hintText: 'Enter Actual Relative Humidity',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_actualRelativeHumidity == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Limit'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _differentialPressure == 0 ? false : true,
                    controller: _instrumentDifferentialPressure,
                    decoration: const InputDecoration(
                      label: Text('Differential Pressure'),
                      hintText: 'Enter Differential Pressure',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_differentialPressure == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Differential Pressure'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _pressurelimit == 0 ? false : true,
                    controller: _instrumentPressureLimit,
                    decoration: const InputDecoration(
                      label: Text('Set Differntial Limit'),
                      hintText: 'Enter Differntial Limit',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_pressurelimit == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Differntial Limit'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  TextFormField(
                    enabled: _actualDifferentialPressure == 0 ? false : true,
                    controller: _instrumentActualDifferentialPressure,
                    decoration: const InputDecoration(
                      label: Text('Actual Differential Pressure'),
                      hintText: 'Enter Limit',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_actualDifferentialPressure == 1 &&
                          (value == null || value.isEmpty)) {
                        return 'Please enter Limit'; //Validation error
                      }
                      return null; //Validation Success
                    },
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  ToogleRemarkWidget(
                    label: 'Area Clean',
                    textController: _areaCleanController,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   mainAxisSize: MainAxisSize.max,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     const Expanded(
                  //       flex: 2,
                  //       child: Text('Cleaning Type'),
                  //     ),
                  //     Expanded(
                  //       flex: 3,
                  //       child: Center(
                  //         child: ToggleSwitch(
                  //           totalSwitches: 2,
                  //           initialLabelIndex: _wastebinscleared,
                  //           labels: const ['Ok', 'Not Ok'],
                  //           //TODO Change Okay Icon
                  //           activeBgColors: const [
                  //             [Colors.green],
                  //             [Colors.red]
                  //           ],
                  //           minWidth: 85.0,
                  //           animate: true,
                  //           onToggle: (index) {
                  //             if (index == 0) {
                  //               _wasteBinsClearedController.clear();
                  //             }
                  //             setState(() {
                  //               _wastebinscleared = index;
                  //             });
                  //           },
                  //           cornerRadius: 20.0,
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       flex: 5,
                  //       child: TextFormField(
                  //         enabled: _wastebinscleared == 0 ? false : true,
                  //         controller: _wasteBinsClearedController,
                  //         decoration: const InputDecoration(
                  //           icon: Icon(Icons.note_add),
                  //           label: Text('Waste Bins Cleared Remark'),
                  //           hintText: 'Enter Remark',
                  //           border: OutlineInputBorder(),
                  //         ),
                  //         validator: (value) {
                  //           if (_wastebinscleared == 1 &&
                  //               (value == null || value.isEmpty)) {
                  //             return 'Please enter Instrument Cleaned By'; //Validation error
                  //           }
                  //           return null; //Validation Success
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  // * Cleaning Type

                  ToogleRemarkWidget(
                    label: 'Cleaning Type',
                    textController: _cleaningRemarkController,
                  ),

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
                  //   // onFind: (text) async {
                  //   //   var response = await Dio().get(
                  //   //     SiftingUrl.cleaningType,
                  //   //   );
                  //   //   if (response.statusCode != 200) {}
                  //   //   // var instrumentCodes =
                  //   //   //     InstrumentCodeModel.getInstrumentCodes(response.data);
                  //   //   // return instrumentCodes;
                  //   // },
                  //   onChanged: (value) => setState(
                  //     () {
                  //       cleaningType = value ?? '';
                  //     },
                  //   ),
                  // ),

                  // const SizedBox(
                  //   height: 25.0,
                  // ),
                  // TextFormField(
                  //   minLines: 5,
                  //   maxLines: 5,
                  //   keyboardType: TextInputType.multiline,
                  //   controller: _cleaningRemarkController,
                  //   decoration: const InputDecoration(
                  //     label: Text('Cleaning Remark'),
                  //     hintText: 'Enter Cleaning Remark',
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
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
                ],
              ),
            ),
          ),
        ));
  }
}

List<String> nextStepDecodeJson(String plainText) {
  final list = IpcNextStep.fromJson(plainText);
  return list.ipcNextStep.toList();
}

// class AreaClearnce extends StatefulWidget {
//   const AreaClearnce({Key? key}) : super(key: key);

//   _AreaClearanceState createState() => _AreaClearanceState();
// }

// class _AreaClearanceState extends State {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String cleaningType = '';
//   String instrumentCode = '';
//   static const List<String> _instrumentType = [
//     // ! Don't change the text (spelling) as Mesh Size and SS Screen Index is dependent on the spelling
//     '123',
//     '456',
//     '789',
//   ];

//   final TextEditingController _instrumentProductName = TextEditingController();
//   int _productName = 0;

//   final TextEditingController _instrumentsetTemperature =
//       TextEditingController();
//   int _setTemperature = 0;

//   final TextEditingController _instrumentLimit = TextEditingController();
//   int _limit = 0;

//   final TextEditingController _instrumentActualTemperature =
//       TextEditingController();
//   int _actualTemparature = 0;

//   final TextEditingController _instrumentsetRelativeHumidity =
//       TextEditingController();
//   int _setRelativeHumidity = 0;

//   final TextEditingController _instrumentHumidityLimit =
//       TextEditingController();
//   int _humiditylimit = 0;

//   final TextEditingController _instrumentActualRelativeHumidity =
//       TextEditingController();
//   int _actualRelativeHumidity = 0;

//   final TextEditingController _instrumentDifferentialPressure =
//       TextEditingController();
//   int _differentialPressure = 0;

//   final TextEditingController _instrumentPressureLimit =
//       TextEditingController();
//   int _pressurelimit = 0;

//   final TextEditingController _instrumentActualDifferentialPressure =
//       TextEditingController();
//   int _actualDifferentialPressure = 0;

//   final TextEditingController _wasteBinsClearedController =
//       TextEditingController();
//   int _wastebinscleared = 0;

//   final TextEditingController _cleanedByUserController =
//       TextEditingController();
//   final TextEditingController _cleanedByPasswordController =
//       TextEditingController();
//   bool _passwordCleanedByUserVisible = false;

//   final TextEditingController _checkedByUserController =
//       TextEditingController();

//   final TextEditingController _checkedByPasswordController =
//       TextEditingController();
//   bool _passwordCheckedByUserVisible = false;

//   final TextEditingController _verifiedByUserController =
//       TextEditingController();
//   final TextEditingController _verifiedByPasswordController =
//       TextEditingController();
//   bool _passwordVerifiedByUserVisible = false;

//   final TextEditingController _instrumentCleanRemarkController =
//       TextEditingController();
//   int _instrumentClean = 0;

//   final TextEditingController _instrumentLogbookUpdatedRemarkController =
//       TextEditingController();
//   int _instrumentLogbookUpdated = 0;

//   final DateRangePickerController _datePickerController =
//       DateRangePickerController();
//   bool _datePickerVisible = false;

//   final TextEditingController _cleaningRemarkController =
//       TextEditingController();

//   final TextEditingController _dateTextFieldController =
//       TextEditingController();

//   final RoundedLoadingButtonController _nextButtonController =
//       RoundedLoadingButtonController();

//   int _selectedInstrumentType = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: MainScaffold.drawer(context),
//         appBar: AppBar(
//           title: const Text('Shifting - Area Clearance'),
//           centerTitle: true,
//         ),
//         body: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(
//                 25.0,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   DropdownButtonFormField<String>(
//                     isExpanded: true,
//                     decoration: const InputDecoration(
//                       label: Text('Previous Product Code'),
//                       focusColor: Colors.blue,
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           style: BorderStyle.solid,
//                         ),
//                       ),
//                     ),
//                     icon: const Icon(Icons.arrow_drop_down),
//                     value: _instrumentType[_selectedInstrumentType],
//                     items: _instrumentType
//                         .map<DropdownMenuItem<String>>(
//                           (String value) => DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _selectedInstrumentType =
//                             _instrumentType.indexOf(newValue!);
//                       });
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Expanded(
//                         flex: 1,
//                         child: Text('Product Name: '),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: TextFormField(
//                           enabled: _productName == 0 ? false : true,
//                           controller: _instrumentProductName,
//                           decoration: const InputDecoration(
//                             label: Text('Previous Product Name'),
//                             hintText: 'Enter Previous Product Name',
//                             border: OutlineInputBorder(),
//                           ),
//                           validator: (value) {
//                             if (_productName == 1 &&
//                                 (value == null || value.isEmpty)) {
//                               return 'Please enter Product Name'; //Validation error
//                             }
//                             return null; //Validation Success
//                           },
//                         ),
//                       )
//                     ],
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   DropdownButtonFormField<String>(
//                     isExpanded: true,
//                     decoration: const InputDecoration(
//                       label: Text('Previous Batch Number'),
//                       focusColor: Colors.blue,
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           style: BorderStyle.solid,
//                         ),
//                       ),
//                     ),
//                     icon: const Icon(Icons.arrow_drop_down),
//                     value: _instrumentType[_selectedInstrumentType],
//                     items: _instrumentType
//                         .map<DropdownMenuItem<String>>(
//                           (String value) => DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _selectedInstrumentType =
//                             _instrumentType.indexOf(newValue!);
//                       });
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Expanded(
//                         flex: 2,
//                         child: Text('Waste Bins Cleared: '),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Center(
//                           child: ToggleSwitch(
//                             totalSwitches: 2,
//                             initialLabelIndex: _wastebinscleared,
//                             labels: const ['Ok', 'Not Ok'],
//                             //TODO Change Okay Icon
//                             activeBgColors: const [
//                               [Colors.green],
//                               [Colors.red]
//                             ],
//                             minWidth: 85.0,
//                             animate: true,
//                             onToggle: (index) {
//                               if (index == 0) {
//                                 _wasteBinsClearedController.clear();
//                               }
//                               setState(() {
//                                 _wastebinscleared = index!;
//                               });
//                             },
//                             cornerRadius: 20.0,
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 5,
//                         child: TextFormField(
//                           enabled: _wastebinscleared == 0 ? false : true,
//                           controller: _wasteBinsClearedController,
//                           decoration: const InputDecoration(
//                             icon: Icon(Icons.note_add),
//                             label: Text('Waste Bins Cleared Remark'),
//                             hintText: 'Enter Remark',
//                             border: OutlineInputBorder(),
//                           ),
//                           validator: (value) {
//                             if (_wastebinscleared == 1 &&
//                                 (value == null || value.isEmpty)) {
//                               return 'Please enter Instrument Cleaned By'; //Validation error
//                             }
//                             return null; //Validation Success
//                           },
//                         ),
//                       ),
//                     ],
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _setTemperature == 0 ? false : true,
//                     controller: _instrumentsetTemperature,
//                     decoration: const InputDecoration(
//                       label: Text('Set Temperature'),
//                       hintText: 'Enter Temperature',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_setTemperature == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Temperature'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _limit == 0 ? false : true,
//                     controller: _instrumentLimit,
//                     decoration: const InputDecoration(
//                       label: Text('Set Limit'),
//                       hintText: 'Enter Limit',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_limit == 1 && (value == null || value.isEmpty)) {
//                         return 'Please enter Limit'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _actualTemparature == 0 ? false : true,
//                     controller: _instrumentActualTemperature,
//                     decoration: const InputDecoration(
//                       label: Text('Actual Temperature'),
//                       hintText: 'Enter Actual Temperature',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_actualTemparature == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Actual Temperature'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _setRelativeHumidity == 0 ? false : true,
//                     controller: _instrumentsetRelativeHumidity,
//                     decoration: const InputDecoration(
//                       label: Text('Set Relative Humidity'),
//                       hintText: 'Enter Relative Humidity',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_setRelativeHumidity == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Relative Humidity'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _humiditylimit == 0 ? false : true,
//                     controller: _instrumentHumidityLimit,
//                     decoration: const InputDecoration(
//                       label: Text('Limit(%)'),
//                       hintText: 'Enter Limit',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_humiditylimit == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Limit'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _actualRelativeHumidity == 0 ? false : true,
//                     controller: _instrumentActualRelativeHumidity,
//                     decoration: const InputDecoration(
//                       label: Text('Actual Relative Humidity'),
//                       hintText: 'Enter Actual Relative Humidity',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_actualRelativeHumidity == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Limit'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _differentialPressure == 0 ? false : true,
//                     controller: _instrumentDifferentialPressure,
//                     decoration: const InputDecoration(
//                       label: Text('Differential Pressure'),
//                       hintText: 'Enter Differential Pressure',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_differentialPressure == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Differential Pressure'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _pressurelimit == 0 ? false : true,
//                     controller: _instrumentPressureLimit,
//                     decoration: const InputDecoration(
//                       label: Text('Set Differntial Limit'),
//                       hintText: 'Enter Differntial Limit',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_pressurelimit == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Differntial Limit'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   TextFormField(
//                     enabled: _actualDifferentialPressure == 0 ? false : true,
//                     controller: _instrumentActualDifferentialPressure,
//                     decoration: const InputDecoration(
//                       label: Text('Actual Differential Pressure'),
//                       hintText: 'Enter Limit',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (_actualDifferentialPressure == 1 &&
//                           (value == null || value.isEmpty)) {
//                         return 'Please enter Limit'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Expanded(
//                         flex: 2,
//                         child: Text('Cleaning Type'),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Center(
//                           child: ToggleSwitch(
//                             totalSwitches: 2,
//                             initialLabelIndex: _wastebinscleared,
//                             labels: const ['Ok', 'Not Ok'],
//                             //TODO Change Okay Icon
//                             activeBgColors: const [
//                               [Colors.green],
//                               [Colors.red]
//                             ],
//                             minWidth: 85.0,
//                             animate: true,
//                             onToggle: (index) {
//                               if (index == 0) {
//                                 _wasteBinsClearedController.clear();
//                               }
//                               setState(() {
//                                 _wastebinscleared = index!;
//                               });
//                             },
//                             cornerRadius: 20.0,
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 5,
//                         child: TextFormField(
//                           enabled: _wastebinscleared == 0 ? false : true,
//                           controller: _wasteBinsClearedController,
//                           decoration: const InputDecoration(
//                             icon: Icon(Icons.note_add),
//                             label: Text('Waste Bins Cleared Remark'),
//                             hintText: 'Enter Remark',
//                             border: OutlineInputBorder(),
//                           ),
//                           validator: (value) {
//                             if (_wastebinscleared == 1 &&
//                                 (value == null || value.isEmpty)) {
//                               return 'Please enter Instrument Cleaned By'; //Validation error
//                             }
//                             return null; //Validation Success
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Cleaning Type

//                   DropdownSearch<String>(
//                     mode: Mode.MENU,
//                     showSelectedItems: true,
//                     showSearchBox: true,
//                     showAsSuffixIcons: true,
//                     dropdownSearchDecoration: const InputDecoration(
//                       label: Text('Cleaning Type'),
//                       focusColor: Colors.blue,
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           style: BorderStyle.solid,
//                         ),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please select Cleaning Type';
//                       }
//                       return null;
//                     },
//                     // onFind: (text) async {
//                     //   var response = await Dio().get(
//                     //     SiftingUrl.cleaningType,
//                     //   );
//                     //   if (response.statusCode != 200) {}
//                     //   // var instrumentCodes =
//                     //   //     InstrumentCodeModel.getInstrumentCodes(response.data);
//                     //   // return instrumentCodes;
//                     // },
//                     onChanged: (value) => setState(
//                       () {
//                         cleaningType = value ?? '';
//                       },
//                     ),
//                   ),

//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   TextFormField(
//                     minLines: 5,
//                     maxLines: 5,
//                     keyboardType: TextInputType.multiline,
//                     controller: _cleaningRemarkController,
//                     decoration: const InputDecoration(
//                       label: Text('Cleaning Remark'),
//                       hintText: 'Enter Cleaning Remark',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Cleaned On
//                   TextFormField(
//                     controller: _dateTextFieldController,
//                     readOnly: true,
//                     //initialValue: ,
//                     decoration: InputDecoration(
//                       label: const Text('Cleaned On (DD-MM-YYYY)'),
//                       hintText: 'Select the date for instrument cleaning',
//                       suffixIcon: IconButton(
//                         onPressed: () => setState(() {
//                           _datePickerVisible = true;
//                         }),
//                         icon: const Icon(Icons.date_range),
//                       ),
//                       border: const OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please select the date on which the instrument was cleaned'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   Visibility(
//                     visible: _datePickerVisible,
//                     child: SfDateRangePicker(
//                       controller: _datePickerController,
//                       showActionButtons: true,
//                       showTodayButton: true,
//                       onCancel: () => setState(
//                         () {
//                           _datePickerVisible = false;
//                         },
//                       ),
//                       onSubmit: (p0) {
//                         final DateFormat formatter = DateFormat('dd-MM-yyyy');
//                         String date = formatter.format(p0 as DateTime);
//                         _dateTextFieldController.text = date;
//                         setState(() {
//                           _datePickerVisible = false;
//                         });
//                       },
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Cleaned By User Name
//                   TextFormField(
//                     controller: _cleanedByUserController,
//                     decoration: const InputDecoration(
//                       icon: Icon(Icons.person),
//                       label: Text('Cleaned By'),
//                       hintText: 'Enter your Cleaned By',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Cleaned By'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Cleaned By User Password
//                   TextFormField(
//                     obscureText: _passwordCleanedByUserVisible,
//                     controller: _cleanedByPasswordController,
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.password),
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() => _passwordCleanedByUserVisible =
//                               !_passwordCleanedByUserVisible);
//                         },
//                         icon: Icon(!_passwordCleanedByUserVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off),
//                       ),
//                       label: const Text('Cleaned By Password'),
//                       hintText: 'Enter your Cleaned By Password',
//                       border: const OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Cleaned By Password'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Checked By User Name
//                   TextFormField(
//                     controller: _checkedByUserController,
//                     decoration: const InputDecoration(
//                       icon: Icon(Icons.person),
//                       label: Text('Checked By'),
//                       hintText: 'Enter your Checked By',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Checked By'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Checked By User Password
//                   TextFormField(
//                     obscureText: _passwordCheckedByUserVisible,
//                     controller: _checkedByPasswordController,
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.password),
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() => _passwordCheckedByUserVisible =
//                               !_passwordCheckedByUserVisible);
//                         },
//                         icon: Icon(!_passwordCheckedByUserVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off),
//                       ),
//                       label: const Text('Checked By Password'),
//                       hintText: 'Enter your Checked By Password',
//                       border: const OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Checked By Password'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Verified By User Name
//                   TextFormField(
//                     controller: _verifiedByUserController,
//                     decoration: const InputDecoration(
//                       icon: Icon(Icons.person),
//                       label: Text('Verified By'),
//                       hintText: 'Enter your Verified By',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Verified By'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   // * Verified By User Password
//                   TextFormField(
//                     obscureText: _passwordVerifiedByUserVisible,
//                     controller: _verifiedByPasswordController,
//                     decoration: InputDecoration(
//                       icon: const Icon(Icons.password),
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() => _passwordVerifiedByUserVisible =
//                               !_passwordVerifiedByUserVisible);
//                         },
//                         icon: Icon(!_passwordVerifiedByUserVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off),
//                       ),
//                       label: const Text('Verified By Password'),
//                       hintText: 'Enter your Verified By Password',
//                       border: const OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Verified By Password'; //Validation error
//                       }
//                       return null; //Validation Success
//                     },
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
