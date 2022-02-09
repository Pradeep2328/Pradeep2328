import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reference_wrapper/reference_wrapper.dart';

class WeightInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Ref<String> unit;
  const WeightInputWidget({
    required this.controller,
    required this.label,
    required this.unit,
    Key? key,
  }) : super(key: key);

  @override
  State<WeightInputWidget> createState() => _WeightInputWidgetState();
}

class _WeightInputWidgetState extends State<WeightInputWidget> {
  static const List<String> _units = ['mg', 'g', 'kg'];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text(widget.label),
              hintText: 'Enter ${widget.label}',
              border: const OutlineInputBorder(),
            ),
            controller: widget.controller,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9.+-]')),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter ${widget.label}';
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          width: 25.0,
        ),
        Expanded(
          flex: 2,
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            decoration: const InputDecoration(
              label: Text('Unit'),
              focusColor: Colors.blue,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                ),
              ),
            ),
            icon: const Icon(Icons.arrow_drop_down),
            value: _units[_units.indexOf(widget.unit.ref)],
            items: _units
                .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ),
                )
                .toList(),
            onChanged: (String? newValue) {
              setState(() => widget.unit.ref = newValue!);
            },
          ),
        ),
      ],
    );
  }
}
