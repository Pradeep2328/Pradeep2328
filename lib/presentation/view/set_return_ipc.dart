import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:granulation/common/widgets.dart';
import 'package:granulation/presentation/model/ipc_details.dart';

@immutable
class SetReturnIPC extends StatefulWidget {
  const SetReturnIPC({Key? key}) : super(key: key);

  @override
  State<SetReturnIPC> createState() => _SetReturnIPCState();
}

class _SetReturnIPCState extends State<SetReturnIPC> {
  late final List<IpcDataClass> _avaiableIpc;
  late final List<IpcDataClass> _selectedIpc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainScaffold.drawer(context),
      appBar: MainScaffold.appBar('Set/Return - IPC'),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Avaiable IPC',
                    //style: TextStyle(color: Colors.black),
                  ),
                  centerTitle: true,
                  //backgroundColor: Colors.green[100],
                ),
                //body: ListView.builder(itemBuilder: itemBuilder),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: moveIpcUpward,
                  icon: const Icon(Icons.arrow_upward_rounded),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                IconButton(
                  onPressed: moveIpcRight,
                  icon: const Icon(Icons.arrow_forward_rounded),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                IconButton(
                  onPressed: moveIpcLeft,
                  icon: const Icon(Icons.arrow_back_rounded),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                IconButton(
                  onPressed: moveIpcDownward,
                  icon: const Icon(Icons.arrow_downward_rounded),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(color: Colors.amberAccent),
          ),
        ],
      ),
    );
  }

  void moveIpcRight() {}

  void moveIpcLeft() {}

  void moveIpcUpward() {}

  void moveIpcDownward() {}
}
