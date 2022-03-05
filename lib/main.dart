import 'package:granulation/business_logic_controller/cubit/theme_cubit.dart';
import 'package:granulation/presentation/view/shifting/process_start.dart';
import 'package:logging/logging.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
  runApp(MainApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);
  ThemeMode themeMode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: state.themeMode,
            // home: MeshSizeBeforeSieve(),
            // home: ShiftingInstrumentClearance(),
            // home: SetReturnIPC(),
            home: const ShiftingProcess(),
            // home: const LogIn(),
            // home: AboutUs(),
            // home: AreaClearnce(),
            // home: SetReturnIPC(),
            // home: SieveIntegrity(),
          );
        },
      ),
    );
  }
}
