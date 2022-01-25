import 'package:flutter/material.dart';
import 'package:granulation/presentation/view/about_us.dart';
import 'package:granulation/presentation/view/shifting/instrument_clearance.dart';
import 'package:granulation/services/mqtt_client.dart';
import 'package:granulation/presentation/view/login.dart';
import 'package:granulation/presentation/view/shifting/process_start.dart';

void main() async {
  // MqttClientWrapper mqtt = MqttClientWrapper();
  // await mqtt.connect();
  // mqtt.sendData(data: 'Hello World!!!');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: ShiftingInstrumentClearance(),
      // home: ShiftingProcess(),
      home: LogIn(),
      //home: AboutUs(),
    );
  }
}
