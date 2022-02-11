import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:reference_wrapper/reference_wrapper.dart';

class DropDownSearchSingleItemSelect extends StatefulWidget {
  final String url;
  final String label;
  final Ref<String> itemSelected;
  final Ref<bool> enabled;
  final List<String> Function(String) jsonDecode;
  const DropDownSearchSingleItemSelect({
    required this.label,
    required this.url,
    required this.itemSelected,
    required this.enabled,
    required this.jsonDecode,
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownSearchSingleItemSelect> createState() =>
      _DropDownSearchSingleItemSelectState();
}

class _DropDownSearchSingleItemSelectState
    extends State<DropDownSearchSingleItemSelect> {
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      enabled: widget.enabled.ref,
      mode: Mode.MENU,
      showSelectedItems: true,
      showSearchBox: true,
      showAsSuffixIcons: true,
      dropdownSearchDecoration: InputDecoration(
        label: Text(widget.label),
        focusColor: Colors.blue,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select ${widget.label}';
        }
        return null;
      },
      onFind: (text) async {
        var response = await Dio().get(
          widget.url,
        );
        if (response.statusCode != 200) {}
        return widget.jsonDecode(response.data as String);
      },
      onChanged: (value) => setState(
        () {
          widget.itemSelected.ref = value ?? '';
        },
      ),
    );
  }
}
