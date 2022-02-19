import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:reference_wrapper/reference_wrapper.dart';

class DropDownSearchSingleItemSelect extends StatefulWidget {
  final String url;
  final String label;
  final Ref<String> itemSelected;
  final bool enabled;
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
      enabled: widget.enabled,
      mode: Mode.MENU,
      showSelectedItems: true,
      showSearchBox: true,
      showAsSuffixIcons: true,
      //itemAsString: ,
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

class DropDownSearchMultiItemSelect extends StatefulWidget {
  final String url;
  final String label;
  final List<String> itemSelected;
  final bool enabled;
  final List<String> Function(String) jsonDecode;

  const DropDownSearchMultiItemSelect({
    required this.url,
    required this.label,
    required this.itemSelected,
    required this.enabled,
    required this.jsonDecode,
    Key? key,
  }) : super(key: key);
  @override
  State<DropDownSearchMultiItemSelect> createState() =>
      _DropDownSearchMultiItemSelectState();
}

class _DropDownSearchMultiItemSelectState
    extends State<DropDownSearchMultiItemSelect> {
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>.multiSelection(
      enabled: widget.enabled,
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
      items: const [
        'Test01',
        'Test02',
        'Test03',
        'Test04',
        'Test05',
      ],
      // ! Commented for testing
      // onFind: (text) async {
      //   var response = await Dio().get(
      //     widget.url,
      //   );
      //   if (response.statusCode != 200) {}
      //   return widget.jsonDecode(response.data as String);
      // },
      onChanged: (value) => setState(
        () {
          widget.itemSelected.clear();
          for (var element in value) {
            widget.itemSelected.add(element);
          }
        },
      ),
    );
  }
}

// class DropDownSearchSingleItemSelectTest<T> extends StatefulWidget {
//   const DropDownSearchSingleItemSelectTest({
//     Key? key,
//     required this.url,
//     required this.label,
//     required this.itemSelected,
//     required this.enabled,
//     required this.jsonDecode,
//   }) : super(key: key);
//   final String url;
//   final String label;
//   final Ref<String> itemSelected;
//   final bool enabled;
//   final List<String> Function(String) jsonDecode;
//   @override
//   State<DropDownSearchSingleItemSelectTest<T>> createState() =>
//       _DropDownSearchSingleItemSelectTestState<T>();
// }

// class _DropDownSearchSingleItemSelectTestState<T>
//     extends State<DropDownSearchSingleItemSelectTest<T>> {
//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<T>(
//       enabled: widget.enabled,
//       mode: Mode.MENU,
//       showSelectedItems: true,
//       showSearchBox: true,
//       showAsSuffixIcons: true,
//       //itemAsString: ,
//       dropdownSearchDecoration: InputDecoration(
//         label: Text(widget.label),
//         focusColor: Colors.blue,
//         border: const OutlineInputBorder(
//           borderSide: BorderSide(
//             style: BorderStyle.solid,
//           ),
//         ),
//       ),
//       validator: (value) {
//         if (value == null || value.toString().isEmpty) {
//           return 'Please select ${widget.label}';
//         }
//         return null;
//       },
//       // onFind: (text) async {
//       //   var response = await Dio().get(
//       //     widget.url,
//       //   );
//       //   if (response.statusCode != 200) {}
//       //   return widget.jsonDecode(response.data as String);
//       // },
//       onChanged: (value) => setState(
//         () {
//           widget.itemSelected.ref = value.toString();
//         },
//       ),
//     );
//   }
// }
