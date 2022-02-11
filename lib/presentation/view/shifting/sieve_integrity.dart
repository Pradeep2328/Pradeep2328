import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
=======
import 'package:granulation/presentation/view/common_widgets/date_time_widget.dart';
import 'package:granulation/presentation/view/common_widgets/test_operation_widget.dart';
// import 'package:granulation/common/widgets.dart';
// import 'package:granulation/presentation/common/widgets.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:reference_wrapper/reference_wrapper.dart';
>>>>>>> Stashed changes
import 'package:toggle_switch/toggle_switch.dart';

class SieveIntegrity extends StatefulWidget {
  const SieveIntegrity({Key? key}) : super(key: key);
  _SieveIntegrity createState() => _SieveIntegrity();
}

class _SieveIntegrity extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _sieveIntegrityController =
      TextEditingController();
  int _sieveintegrity = 0;

  final TextEditingController _retainedPowderController =
      TextEditingController();
  int _retainedPowder = 0;

  final TextEditingController _sieveIntegrityControllerBeforeSieving =
      TextEditingController();
  int _sieveintegritybeforesieving = 0;

  final TextEditingController _sieveMeshSizeController =
      TextEditingController();

  final TextEditingController _dateTextFieldController =
      TextEditingController();

  final TextEditingController _grossWeightController = TextEditingController();

  final TextEditingController _netWeightController = TextEditingController();

  final Ref<String> _unit = Ref<String>('kg');
  final int _sievemeshsize = 0;

  static const List<String> _instrumentType = [
    // ! Don't change the text (spelling) as Mesh Size and SS Screen Index is dependent on the spelling
    '123',
    '456',
    '789',
  ];

  static const List<String> _ipcstatus = [
    // ! Don't change the text (spelling) as Mesh Size and SS Screen Index is dependent on the spelling
    'Sieved Materials',
    'Sieved Materials1',
    'Sieved Materials2',
  ];

  static const List<String> _nextstep = [
    // ! Don't change the text (spelling) as Mesh Size and SS Screen Index is dependent on the spelling
    'Dry Mixing',
    'Dry Mixing1',
    'Dry Mixing2',
  ];
  int _selectedInstrumentType = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: MainScaffold.drawer(context),
      appBar: AppBar(
        title: const Text(''),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('Integrity of Sieve (after sieving):'),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: ToggleSwitch(
                          totalSwitches: 2,
                          initialLabelIndex: _sieveintegrity,
                          labels: const ['Ok', 'Not Ok'],
                          //TODO Change Okay Icon
                          activeBgColors: const [
                            [Colors.green],
                            [Colors.red]
                          ],
                          minWidth: 85.0,
                          animate: true,
                          onToggle: (index) {
                            if (index == 0) {
                              _sieveIntegrityController.clear();
                            }
                            setState(() {
                              _sieveintegrity = index;
                            });
                          },
                          cornerRadius: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        enabled: _sieveintegrity == 0 ? false : true,
                        controller: _sieveIntegrityController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.note_add),
                          label: Text('Integrity of Sieve Remark'),
                          hintText: 'Enter Remark',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (_sieveintegrity == 1 &&
                              (value == null || value.isEmpty)) {
                            return 'Please enter rmeark'; //Validation error
                          }
                          return null; //Validation Success
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  controller: _sieveMeshSizeController,
                  decoration: const InputDecoration(
                    label: Text('Mesh Size of Sieve'),
                    hintText: 'Enter Mesh Size of Sieve',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Mesh Size of Sieve'; //Validation error
                    }
                    return null; //Validation Success
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text(
                          'Integrity and Dryness of Sieve(before sieving):'),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: ToggleSwitch(
                          totalSwitches: 2,
                          initialLabelIndex: _sieveintegritybeforesieving,
                          labels: const ['Ok', 'Not Ok'],
                          //TODO Change Okay Icon
                          activeBgColors: const [
                            [Colors.green],
                            [Colors.red]
                          ],
                          minWidth: 85.0,
                          animate: true,
                          onToggle: (index) {
                            if (index == 0) {
                              _sieveIntegrityControllerBeforeSieving.clear();
                            }
                            setState(() {
                              _sieveintegritybeforesieving = index;
                            });
                          },
                          cornerRadius: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        enabled: _sieveintegrity == 0 ? false : true,
                        controller: _sieveIntegrityController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.note_add),
                          label: Text('Remark if selected Not Ok'),
                          hintText: 'Enter Remark',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (_sieveintegritybeforesieving == 1 &&
                              (value == null || value.isEmpty)) {
                            return 'Please enter rmeark'; //Validation error
                          }
                          return null; //Validation Success
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: const InputDecoration(
                    label: Text('IPC ID'),
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
                WeightInputWidget(
                  controller: _sieveMeshSizeController,
                  label: 'Tare Weight for IPC',
                  unit: _unit,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: const InputDecoration(
                    label: Text('IPC Status'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  value: _ipcstatus[_selectedInstrumentType],
                  items: _ipcstatus
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedInstrumentType = _ipcstatus.indexOf(newValue!);
                    });
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: const InputDecoration(
                    label: Text('Next Step'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  value: _nextstep[_selectedInstrumentType],
                  items: _nextstep
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedInstrumentType = _nextstep.indexOf(newValue!);
                    });
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                DatePicker(
                  controller: _dateTextFieldController,
                  label: 'Use Before',
                  hintLabel: 'Please Select the date',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: const InputDecoration(
                    label: Text('Label Header'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  value: _nextstep[_selectedInstrumentType],
                  items: _nextstep
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedInstrumentType = _nextstep.indexOf(newValue!);
                    });
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                WeightInputWidget(
                  controller: _grossWeightController,
                  label: 'Gross Weight of Sieved Material',
                  unit: _unit,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                WeightInputWidget(
                  controller: _netWeightController,
                  label: 'Net Weight of Sieved Material',
                  unit: _unit,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('Abnormality in Retained Powder:'),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: ToggleSwitch(
                          totalSwitches: 2,
                          initialLabelIndex: _retainedPowder,
                          labels: const ['Ok', 'Not Ok'],
                          //TODO Change Okay Icon
                          activeBgColors: const [
                            [Colors.green],
                            [Colors.red]
                          ],
                          minWidth: 85.0,
                          animate: true,
                          onToggle: (index) {
                            if (index == 0) {
                              _retainedPowderController.clear();
                            }
                            setState(() {
                              _retainedPowder = index;
                            });
                          },
                          cornerRadius: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        enabled: _retainedPowder == 0 ? false : true,
                        controller: _retainedPowderController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.note_add),
                          label: Text('Integrity of Sieve Remark'),
                          hintText: 'Enter Remark',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (_retainedPowder == 1 &&
                              (value == null || value.isEmpty)) {
                            return 'Please enter rmeark'; //Validation error
                          }
                          return null; //Validation Success
                        },
                      ),
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
