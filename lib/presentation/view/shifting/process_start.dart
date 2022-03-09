import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:granulation/api/decoders/dropdown_search_decoders.dart';
import 'package:granulation/common/global.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/presentation/view/common_widgets/selction_widget.dart';
//import 'package:granulation/models/sifting/product_code.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';
import 'package:granulation/presentation/view/shifting/area_clearance.dart';
import 'package:granulation/presentation/view/shifting/instrument_clearance.dart';
import 'package:reference_wrapper/reference_wrapper.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ShiftingProcess extends StatefulWidget {
  const ShiftingProcess({Key? key}) : super(key: key);

  @override
  _ShiftingProcessState createState() => _ShiftingProcessState();
}

class _ShiftingProcessState extends State<ShiftingProcess> {
  final RoundedLoadingButtonController _nextButtonController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController _changeIpcButtonController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController _changeSieveButtonController =
      RoundedLoadingButtonController();

  final List<String> materialSifted = [];

  final _formKey = GlobalKey<FormState>();
  final Ref<String> _productCode = Ref<String>('');
  final Ref<String> _batchNumber = Ref<String>('');
  final Ref<String> _areas = Ref<String>('');
  final Ref<String> _roomName = Ref<String>('');
  final Ref<String> _stageName = Ref<String>('');
  TextEditingController processOrderNumberController = TextEditingController();
  Ref<String> productCode = Ref<String>('');
  String batchNumber = '';
  String area = '';
  String roomName = '';

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
                    // * Product Code
                    DropDownSearchSingleItemSelect(
                      url: ServerConfiguration.serverUri +
                          DropDownCommonUrl.productCode,
                      label: 'Product Code',
                      itemSelected: _productCode,
                      enabled: true,
                      retriveItemList:
                          CommonDropDownSearchJsonDecoder.productCode,
                      callback: reRenderUi,
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),
                    //Batch Number
                    DropDownSearchSingleItemSelect(
                      url: ServerConfiguration.serverUri +
                          DropDownCommonUrl.batchNumber,
                      label: 'Batch Number',
                      itemSelected: _batchNumber,
                      enabled: _productCode.ref.isNotEmpty,
                      retriveItemList: (_) =>
                          CommonDropDownSearchJsonDecoder.batchNumber(
                              _productCode.ref),
                      callback: reRenderUi,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Area
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      // height: 55.0,
                      child: DropDownSearchSingleItemSelect(
                        url: ServerConfiguration.serverUri + SiftingUrl.areaUrl,
                        label: 'Area',
                        itemSelected: _areas,
                        enabled: true,
                        retriveItemList:
                            CommonDropDownSearchJsonDecoder.getAreas,
                        callback: reRenderUi,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Room Name
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      // height: 55.0,
                      child: DropDownSearchSingleItemSelect(
                        url: ServerConfiguration.serverUri +
                            SiftingUrl.allRoomName,
                        label: 'Room Name',
                        itemSelected: _roomName,
                        enabled: true,
                        retriveItemList:
                            CommonDropDownSearchJsonDecoder.getRoomNames,
                        callback: reRenderUi,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      //Used to make DropdownSearch as of same height as TextFormField
                      // height: 55.0,
                      child: DropDownSearchSingleItemSelect(
                        url:
                            ServerConfiguration.serverUri + SiftingUrl.allStage,
                        label: 'Stage',
                        itemSelected: _stageName,
                        enabled: true,
                        retriveItemList:
                            CommonDropDownSearchJsonDecoder.getStageNames,
                        callback: reRenderUi,
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
                    RoundedLoadingButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ShiftingInstrumentClearance()),
                        );
                        Navigator.pop(context);
                        print('Items Selected $materialSifted');
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // TODO Implement uncomment return and success
                          // _nextButtonController.success();
                          // return;
                        }
                        _nextButtonController.error();
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        _nextButtonController.reset();
                      },
                      controller: _nextButtonController,
                      child: const Text('Next'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AreaClearnce()),
                        );
                        Navigator.pop(context);
                        _productCode.ref = '';
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

  void reRenderUi() => setState(() {});
}
