import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
// import 'package:granulation/common/json_decoders.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/presentation/view/common_widgets/selction_widget.dart';
//import 'package:granulation/models/sifting/product_code.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:granulation/presentation/view/shifting/mesh_size_before_sieve.dart';
import 'package:reference_wrapper/reference_wrapper.dart';

class ShiftingProcess extends StatefulWidget {
  const ShiftingProcess({Key? key}) : super(key: key);

  @override
  _ShiftingProcessState createState() => _ShiftingProcessState();
}

class _ShiftingProcessState extends State<ShiftingProcess> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController processOrderNumberController = TextEditingController();
  Ref<String> productCode = Ref<String>('');
  String batchNumber = 'prod3';
  String area = 'granulation';
  String roomName = 'granulation';

  final _previousproductcode = Ref<String>('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBase(title: 'Sifting - Process'),
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
                    // DropDownSearchSingleItemSelect(
                    //   enabled: true,
                    //   label: 'Previous Product Code',
                    //   itemSelected: _previousproductcode,
                    //   retriveItemList: DropDownJsonDecoder.productCode,
                    //   url: DropDownUrl.productCode,
                    // ),
                    // * Product Code
                    // DropDownSearchSingleItemSelect(label: 'Product Code', url: DropDownUrl.productCode, itemSelected: productCode, enabled: true, retriveItemList: DropDownJsonDecoder.productCode,),
                    // child: DropdownSearch<ProductCode>(

                    // child: DropdownSearch<String>(
                    //   mode: Mode.MENU,
                    //   showSelectedItems: true,
                    //   showSearchBox: true,
                    //   showAsSuffixIcons: true,
                    //   dropdownSearchDecoration: const InputDecoration(
                    //     label: Text('Product Code'),
                    //     focusColor: Colors.blue,
                    //     border: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         style: BorderStyle.solid,
                    //       ),
                    //     ),
                    //   ),
                    //   validator: (value) {
                    //     //if (value == null || value.name.isEmpty) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please select Product Code';
                    //     }
                    //     return null;
                    //   },
                    // ! Uncomment once Product Code is generated
                    // onFind: (text) async {
                    //   var response = await Dio().get(
                    //     'https://5d85ccfb1e61af001471bf60.mockapi.io/user',
                    //   ); //https://5d85ccfb1e61af001471bf60.mockapi.io/user
                    //   if (response.statusCode != 200) {}
                    //   var models = ProductCode.fromJsonList(response.data);
                    //   //return models;
                    //   final List<String> productNames =
                    //       models.map((product) => product.name).toList();
                    //   return productNames;
                    // },
                    //   onChanged: (value) => setState(
                    //     () {
                    //       productCode = value ?? '';
                    //       //productCode = value?.name ?? '';
                    //     },
                    //   ),
                    // ),

                    // const SizedBox(
                    //   height: 10.0,
                    // ),
                    //Batch Number

                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      height: 55.0,
                      child: DropdownSearch<String>(
                        enabled: true,
                        // enabled: productCode.ref.isNotEmpty ? true : false,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        showAsSuffixIcons: true,
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
                        // ! Uncomment once Product Code is generated
                        // onFind: (text) async {
                        //   var response = await Dio().get(
                        //       'http://5d85ccfb1e61af001471bf55.mockapi.io/user');
                        //   // var models =
                        //   //     ProductCode.fromJsonList(response.data);
                        //   // final List<String> productNames =
                        //   //     models.map((product) => product.name).toList();
                        //   var productCodes =
                        //       ProductCode.productCodes(response);
                        //   return productCodes;
                        // },
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
                        enabled: true,
                        // enabled: batchNumber.isNotEmpty ? true : false,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        showAsSuffixIcons: true,
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
                        // ! Uncomment once Product Code is generated
                        // onFind: (text) async {
                        //   var response = await Dio().get(
                        //       'http://5d85ccfb1e61af001471bf55.mockapi.io/user');
                        //   var models = ProductCode.fromJsonList(response.data);
                        //   final List<String> productNames =
                        //       models.map((product) => product.name).toList();
                        //   return productNames;
                        // },
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
                        enabled: true,
                        // enabled: area.isNotEmpty ? true : false,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        showSearchBox: true,
                        showAsSuffixIcons: true,
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
                        // ! Uncomment once Product Code is generated
                        // onFind: (text) async {
                        //   var response = await Dio().get(
                        //       'http://5d85ccfb1e61af001471bf55.mockapi.io/user');
                        //   var models = ProductCode.fromJsonList(response.data);
                        //   final List<String> productNames =
                        //       models.map((product) => product.name).toList();
                        //   return productNames;
                        // },
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
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MeshSizeBeforeSieve()),
                        );
                        Navigator.pop(context);
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
