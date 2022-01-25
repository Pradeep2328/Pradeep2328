import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/widgets.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:granulation/models/shifting/instrument_code.dart';

class ShiftingInstrumentClearance extends StatefulWidget {
  const ShiftingInstrumentClearance({Key? key}) : super(key: key);

  @override
  State<ShiftingInstrumentClearance> createState() =>
      _ShiftingInstrumentClearanceState();
}

class _ShiftingInstrumentClearanceState
    extends State<ShiftingInstrumentClearance> {
  final _formKey = GlobalKey<FormState>();
  String instrumentCode = '';
  String instrumentType = '';
  TextEditingController cleanedByUser = TextEditingController();
  TextEditingController cleanedByPassword = TextEditingController();
  TextEditingController checkedByUser = TextEditingController();
  TextEditingController checkedByPassword = TextEditingController();
  TextEditingController verifiedByUser = TextEditingController();
  TextEditingController verifiedByPasswordS = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MainScaffold.drawer(context),
        appBar: AppBar(
          title: const Text('Shifting - Instrument Clearance'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Tab>[
              Tab(
                child: Text('Vibratory Sifter'),
              ),
              Tab(
                child: Text('Sieve'),
              ),
              Tab(
                child: Text('SS Screen'),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: <Widget>[
          Text('Vibratory Sifter'),
          Text('Sieve'),
          Text('SS Screen'),
        ]),
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(25.0),
        //     child: Form(
        //       key: _formKey,
        //       child: Column(
        //         children: <Widget>[
        //           //Instrument Type
        //           DropdownSearch<String>(
        //             mode: Mode.MENU,
        //             showSelectedItems: true,
        //             showSearchBox: true,
        //             dropdownSearchDecoration: const InputDecoration(
        //               label: Text('Instrument Type'),
        //               focusColor: Colors.blue,
        //               border: OutlineInputBorder(
        //                 borderSide: BorderSide(
        //                   style: BorderStyle.solid,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               //if (value == null || value.name.isEmpty) {
        //               if (value == null || value.isEmpty) {
        //                 return 'Please select Instrument Type';
        //               }
        //               return null;
        //             },
        //             //itemAsString: (item) => item!.userAsString(),
        //             items: const <String>[
        //               'Vibratory Sifter',
        //               'Sieve',
        //               'SS Screen',
        //             ],
        //             onChanged: (value) => setState(
        //               () {
        //                 instrumentType = value ?? '';
        //               },
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 25.0,
        //           ),
        //           //Instrument Code
        //           DropdownSearch<String>(
        //             mode: Mode.MENU,
        //             showSelectedItems: true,
        //             showSearchBox: true,
        //             dropdownSearchDecoration: const InputDecoration(
        //               label: Text('Instrument Code'),
        //               focusColor: Colors.blue,
        //               border: OutlineInputBorder(
        //                 borderSide: BorderSide(
        //                   style: BorderStyle.solid,
        //                 ),
        //               ),
        //             ),
        //             validator: (value) {
        //               //if (value == null || value.name.isEmpty) {
        //               if (value == null || value.isEmpty) {
        //                 return 'Please select Instrument Code';
        //               }
        //               return null;
        //             },
        //             //itemAsString: (item) => item!.userAsString(),
        //             onFind: (text) async {
        //               var response = await Dio().get(
        //                 '',
        //               );
        //               if (response.statusCode != 200) {}
        //               var instrumentCodes =
        //                   InstrumentCodeModel.getInstrumentCodes(response.data);
        //               return instrumentCodes;
        //             },
        //             onChanged: (value) => setState(
        //               () {
        //                 instrumentCode = value ?? '';
        //               },
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }

  List<Widget> displayUserNamePasswordField(
      {required String identifier,
      required TextEditingController userNameController,
      required TextEditingController passwordController,
      required bool passwordVisible}) {
    List<Widget> widgets = [];
    widgets.add(
      TextFormField(
        controller: userNameController,
        decoration: InputDecoration(
          icon: const Icon(Icons.person),
          label: Text(identifier),
          hintText: 'Enter your $identifier',
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $identifier'; //Validation error
          }
          return null; //Validation Success
        },
      ),
    );
    widgets.add(
      const SizedBox(
        height: 25.0,
      ),
    );
    widgets.add(
      TextFormField(
        controller: passwordController,
        obscureText: !passwordVisible,
        decoration: InputDecoration(
          icon: const Icon(Icons.password),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() => passwordVisible = !passwordVisible);
            },
            icon: Icon(
                !passwordVisible ? Icons.visibility : Icons.visibility_off),
          ),
          label: Text('$identifier Password'),
          hintText: 'Please Enter $identifier Password',
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $identifier password';
          }
          return null;
        },
      ),
    );
    widgets.add(
      const SizedBox(height: 25.0),
    );
    return widgets;
  }
}
