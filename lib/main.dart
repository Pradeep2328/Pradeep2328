import 'package:dio/dio.dart';
import 'package:granulation/api/api_list.dart';
import 'package:granulation/common/global.dart';
import 'package:granulation/common/themes.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/authentication.dart';
import 'package:granulation/models/drop_down_search/product_code.dart';
import 'package:granulation/models/test_post.dart';
import 'package:granulation/presentation/model/product_code.dart';
import 'package:logging/logging.dart';
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
import 'package:granulation/presentation/view/set_return_ipc.dart';
import 'package:granulation/presentation/view/shifting/sieve_integrity.dart';

void main() async {
  // final reponse = await ApiService.jsonPlaceholderService.getPost(id: 1);
  // print('Response Code : ${reponse.statusCode}');
  // if (reponse.isSuccessful) {
  //   final postResponse = reponse.body as PostModel;
  //   print('id : ${postResponse.id}');
  //   print('User ID : ${postResponse.userId}');
  //   print('Title : ${postResponse.title}');
  //   print('Body : ${postResponse.body}');
  // }
  _setupLogging();
  runApp(const MainApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.dark,
      // home: MeshSizeBeforeSieve(),
      // home: ShiftingInstrumentClearance(),
      // home: MultiBlocProvider(
      //   providers: [],
      //   child: const SetReturnIPC(),
      // ),
      // home: SetReturnIPC(),
      // home: ShiftingProcess(),
      home: LogIn(),
      // home: AboutUs(),
      // home: AreaClearnce(),
      // home: SetReturnIPC(),
      // home: SieveIntegrity(),
    );
  }
}
