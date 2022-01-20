import 'package:flutter/material.dart';
import 'package:granulation/services/mqtt_client.dart';
import 'view/login.dart';
import 'view/shifting.dart';

void main() async {
  MqttClientWrapper mqtt = MqttClientWrapper();
  await mqtt.connect();
  mqtt.sendData(data: 'Hello World!!!');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Shifting(),
      //home: LogIn(),
    );
  }
}
