import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/ipc_id_list.dart';
import 'package:granulation/models/shifting/mesh_size_sieve.dart';
import 'package:granulation/presentation/common/widgets.dart';

class MeshSizeBeforeSieve extends StatefulWidget {
  const MeshSizeBeforeSieve({Key? key}) : super(key: key);

  @override
  State<MeshSizeBeforeSieve> createState() => _MeshSizeBeforeSieveState();
}

class _MeshSizeBeforeSieveState extends State<MeshSizeBeforeSieve> {
  String meshSizeSieve = '';
  String ipcId = '';
  final TextEditingController _integrityDrynessSieveRemarkController =
      TextEditingController();
  final TextEditingController _tareWeightIpcController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainScaffold.appBar('Sifting'),
      drawer: MainScaffold.drawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
                onFind: (text) async {
                  var response = await Dio().get(
                    SiftingUrl.meshSize,
                  );
                  if (response.statusCode != 200) {}
                  final meshSize = MeshSizeSieve.fromJson(
                      response.data); // .getInstrumentCodes(response.data);
                  return meshSize!.meshSize.toList();
                },
                onChanged: (value) => setState(
                  () {
                    meshSizeSieve = value ?? '';
                  },
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              // * Integrity and Dryness of Sieve (Before Sieving) Check and Remark
              ToogleRemarkWidget(
                textController: _integrityDrynessSieveRemarkController,
                label: 'Integrity and Dryness of Sieve (Before Sieving)',
              ),
              const SizedBox(
                height: 25.0,
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
                onFind: (text) async {
                  var response = await Dio().get(
                    SiftingUrl.ipcId,
                  );
                  if (response.statusCode != 200) {}
                  final ipcIdList = IpcIdList.fromJson(response.data);
                  return ipcIdList.ipcIdList.toList();
                },
                onChanged: (value) => setState(
                  () {
                    ipcId = value ?? '';
                  },
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Tare Weight of IPC'),
                  hintText: 'Enter Tare Weight of IPC',
                  border: OutlineInputBorder(),
                ),
                controller: _tareWeightIpcController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Tare Weight for IPC';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
