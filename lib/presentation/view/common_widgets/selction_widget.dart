import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:reference_wrapper/reference_wrapper.dart';

class DropDownSearchSingleItemSelect extends StatefulWidget {
  final String url;
  final String label;
  final Ref<String> itemSelected;
  final bool enabled;
  final Future<List<String>> Function(String?) retriveItemList;
  final VoidCallback callback;
  const DropDownSearchSingleItemSelect({
    required this.label,
    required this.url,
    required this.itemSelected,
    required this.enabled,
    required this.retriveItemList,
    required this.callback,
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownSearchSingleItemSelect> createState() =>
      _DropDownSearchSingleItemSelectState();
}

class _DropDownSearchSingleItemSelectState
    extends State<DropDownSearchSingleItemSelect> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      enabled: widget.enabled,
      mode: Mode.MENU,
      showSelectedItems: true,
      showSearchBox: true,
      showAsSuffixIcons: true,
      selectedItem: widget.itemSelected.ref,
      searchFieldProps: TextFieldProps(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => controller.clear(),
          ),
        ),
      ),
      dropdownSearchDecoration: InputDecoration(
        label: Text(widget.label),
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
      onFind: widget.retriveItemList,
      onChanged: (value) => setState(
        () {
          widget.itemSelected.ref = value ?? '';
          widget.callback();
        },
      ),
    );
  }
}

class DropDownSearchMultiItemSelect extends StatefulWidget {
  final String url;
  final String label;
  final List<String> itemSelected;
  final bool enabled;
  final Future<List<String>> Function(String?) retriveItemList;
  final VoidCallback callback;
  const DropDownSearchMultiItemSelect({
    required this.url,
    required this.label,
    required this.itemSelected,
    required this.enabled,
    required this.retriveItemList,
    required this.callback,
    Key? key,
  }) : super(key: key);
  @override
  State<DropDownSearchMultiItemSelect> createState() =>
      _DropDownSearchMultiItemSelectState();
}

class _DropDownSearchMultiItemSelectState
    extends State<DropDownSearchMultiItemSelect> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>.multiSelection(
      enabled: widget.enabled,
      mode: Mode.MENU,
      showSelectedItems: true,
      showSearchBox: true,
      showAsSuffixIcons: true,
      searchFieldProps: TextFieldProps(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => controller.clear(),
          ),
        ),
      ),
      dropdownSearchDecoration: InputDecoration(
        label: Text(widget.label),
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
      onFind: widget.retriveItemList,
      onChanged: (value) => setState(
        () {
          widget.itemSelected.clear();
          for (final element in value) {
            widget.itemSelected.add(element);
          }
          widget.callback();
        },
      ),
    );
  }
}
