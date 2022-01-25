import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/widgets.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:granulation/models/shifting/product_code.dart';

class ShiftingProcess extends StatefulWidget {
  const ShiftingProcess({Key? key}) : super(key: key);

  @override
  _ShiftingProcessState createState() => _ShiftingProcessState();
}

class _ShiftingProcessState extends State<ShiftingProcess> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController processOrderNumberController = TextEditingController();
  String productCode = '';
  String batchNumber = '';
  String area = '';
  String roomName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainScaffold.appBar('Shifting'),
      drawer: MainScaffold.drawer(context),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / (kIsWeb ? 1.5 : 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Product Code
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      height: 55.0,
                      //child: DropdownSearch<ProductCodeModel>(
                      child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        dropdownSearchDecoration: const InputDecoration(
                          label: Text('Product Code'),
                          focusColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        validator: (value) {
                          //if (value == null || value.name.isEmpty) {
                          if (value == null || value.isEmpty) {
                            return 'Please select Product Code';
                          }
                          return null;
                        },
                        //itemAsString: (item) => item!.userAsString(),
                        onFind: (text) async {
                          var response = await Dio().get(
                            'https://5d85ccfb1e61af001471bf60.mockapi.io/user',
                          ); //https://5d85ccfb1e61af001471bf60.mockapi.io/user
                          if (response.statusCode != 200) {}
                          var models =
                              ProductCodeModel.fromJsonList(response.data);
                          //return models;
                          final List<String> productNames =
                              models.map((product) => product.name).toList();
                          return productNames;
                        },
                        onChanged: (value) => setState(
                          () {
                            productCode = value ?? '';
                            //productCode = value?.name ?? '';
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Batch Number
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      height: 55.0,
                      child: DropdownSearch<String>(
                        enabled: productCode.isNotEmpty ? true : false,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        dropdownSearchDecoration: const InputDecoration(
                          label: Text('Batch Number'),
                          focusColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select Batch Number';
                          }
                          return null;
                        },
                        onFind: (text) async {
                          var response = await Dio().get(
                              'http://5d85ccfb1e61af001471bf55.mockapi.io/user');
                          // var models =
                          //     ProductCodeModel.fromJsonList(response.data);
                          // final List<String> productNames =
                          //     models.map((product) => product.name).toList();
                          var productCodes =
                              ProductCodeModel.productCodes(response);
                          return productCodes;
                        },
                        onChanged: (value) => setState(
                          () {
                            batchNumber = value ?? '';
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Area
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      height: 55.0,
                      child: DropdownSearch<String>(
                        enabled: batchNumber.isNotEmpty ? true : false,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        dropdownSearchDecoration: const InputDecoration(
                          label: Text('Area'),
                          focusColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select Area';
                          }
                          return null;
                        },
                        onFind: (text) async {
                          var response = await Dio().get(
                              'http://5d85ccfb1e61af001471bf55.mockapi.io/user');
                          var models =
                              ProductCodeModel.fromJsonList(response.data);
                          final List<String> productNames =
                              models.map((product) => product.name).toList();
                          return productNames;
                        },
                        onChanged: (value) => setState(
                          () {
                            area = value ?? '';
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Room Name
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      height: 55.0,
                      child: DropdownSearch<String>(
                        enabled: area.isNotEmpty ? true : false,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        dropdownSearchDecoration: const InputDecoration(
                          label: Text('Room Name'),
                          focusColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select Room Name';
                          }
                          return null;
                        },
                        onFind: (text) async {
                          var response = await Dio().get(
                              'http://5d85ccfb1e61af001471bf55.mockapi.io/user');
                          var models =
                              ProductCodeModel.fromJsonList(response.data);
                          final List<String> productNames =
                              models.map((product) => product.name).toList();
                          return productNames;
                        },
                        onChanged: (value) => setState(
                          () {
                            roomName = value ?? '';
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('Stage'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('Product Type'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('Product Name'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('Product Version Number'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('Version Number'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('BMR Number'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      //controller: ,
                      readOnly: true,
                      decoration: const InputDecoration(
                        label: Text('BMR Version Number'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: processOrderNumberController,
                      decoration: const InputDecoration(
                        label: Text('Process Order Number'),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Process Order Number'; //Validation error
                        }
                        return null; //Validation Success
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: const Text('Scan'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}