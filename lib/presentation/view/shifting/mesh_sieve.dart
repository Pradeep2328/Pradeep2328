import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/common/widgets.dart';

class MeshSieve extends StatefulWidget {
  const MeshSieve({Key? key}) : super(key: key);

  @override
  State<MeshSieve> createState() => _MeshSieveState();
}

class _MeshSieveState extends State<MeshSieve> {
  String meshSizeSieve = '';
  String ipcId = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainScaffold.appBar('Sifting'),
      drawer: MainScaffold.drawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // * Mesh Size of Sieve
            DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItems: true,
              showSearchBox: true,
              showAsSuffixIcons: true,
              dropdownSearchDecoration: const InputDecoration(
                label: Text('Mesh Size of Sieve'),
                focusColor: Colors.blue,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select Mesh Size of Sieve';
                }
                return null;
              },
              // onFind: (text) async {
              //   var response = await Dio().get(
              //     SiftingUrl.meshSize,
              //   );
              //   if (response.statusCode != 200) {}
              //   // var instrumentCodes =
              //   //     InstrumentCodeModel.getInstrumentCodes(response.data);
              //   //return instrumentCodes;
              // },
              onChanged: (value) => setState(
                () {
                  meshSizeSieve = value ?? '';
                },
              ),
            ),
            // * Mesh Size - Only for Instrument Type Sieve
            DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItems: true,
              showSearchBox: true,
              showAsSuffixIcons: true,
              dropdownSearchDecoration: const InputDecoration(
                label: Text('IPC ID'),
                focusColor: Colors.blue,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select IPC ID';
                }
                return null;
              },
              // onFind: (text) async {
              //   var response = await Dio().get(
              //     SiftingUrl.ipcId,
              //   );
              //   if (response.statusCode != 200) {}
              //   // var instrumentCodes =
              //   //     InstrumentCodeModel.getInstrumentCodes(response.data);
              //   // return instrumentCodes;
              // },
              onChanged: (value) => setState(
                () {
                  ipcId = value ?? '';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
