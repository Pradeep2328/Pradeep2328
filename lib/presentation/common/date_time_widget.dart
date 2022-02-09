import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePicker extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hintLabel;
  const DatePicker(
      {required this.controller,
      required this.label,
      required this.hintLabel,
      Key? key})
      : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final DateRangePickerController _datePickerController =
      DateRangePickerController();
  bool _datePickerVisible = false;
  //List<Widget> picker = [];

  @override
  void initState() {
    super.initState();
    _datePickerController.displayDate = DateTime.now();
    _datePickerController.selectedDate = DateTime.now();
    _datePickerController.view = DateRangePickerView.month;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          controller: widget.controller,
          readOnly: true,
          //initialValue: ,
          decoration: InputDecoration(
            label: Text('${widget.label} (DD-MM-YYYY)'),
            hintText: widget.hintLabel,
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
              return widget.hintLabel; //Validation error
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
              widget.controller.text = date;
              setState(() {
                _datePickerVisible = false;
              });
            },
          ),
        ),
      ],
    );
  }
}
