import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:granulation/presentation/view/about_us.dart';
import 'package:granulation/presentation/view/set_return_ipc.dart';
import 'package:granulation/presentation/view/shifting/instrument_clearance.dart';
import 'package:granulation/presentation/view/shifting/mesh_size_before_sieve.dart';
import 'package:granulation/services/mqtt_client.dart';
import 'package:granulation/presentation/view/login.dart';
import 'package:granulation/presentation/view/shifting/process_start.dart';
import 'package:granulation/presentation/view/shifting/area_clearance.dart';

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
      home: MeshSizeBeforeSieve(),
      // home: ShiftingInstrumentClearance(),
      // home: MultiBlocProvider(
      //   providers: [],
      //   child: const SetReturnIPC(),
      // ),
      // home: SetReturnIPC(),
      // home: ShiftingProcess(),
      // home: LogIn(),
      // home: AboutUs(),
      // home: AreaClearnce(),
      // home: AreaClearnce(),
    );
  }
}
