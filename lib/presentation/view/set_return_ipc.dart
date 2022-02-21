import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:granulation/presentation/model/ipc_details.dart';
import 'package:granulation/presentation/view/common_widgets/widgets.dart';

@immutable
class SetReturnIPC extends StatefulWidget {
  const SetReturnIPC({Key? key}) : super(key: key);

  @override
  State<SetReturnIPC> createState() => _SetReturnIPCState();
}

class _SetReturnIPCState extends State<SetReturnIPC> {
  final List<IpcDataClass> _avaiableIpc = [];
  //final List<bool> _avaiableIpcSelected = []; // ? Used to denote slected IPC
  final List<IpcDataClass> _selectedIpc = [];
  //final List<bool> _selectedIpcSelected = [];

  final ScrollController _scrollControllerAvaiableIpc = ScrollController();
  final ScrollController _scrollControllerSelectedIpc = ScrollController();

  @override
  void initState() {
    // Todo : Remove the for loop once API is complete
    for (int i = 0; i < 10; i++) {
      IpcDataClass ipc = IpcDataClass(
          ipcId: 'IPC ${101 + i}', tareWight: '${i + 1} kg', isSelected: false);
      _avaiableIpc.add(ipc);
      //_avaiableIpcSelected.add(false);
    }
    getIpcList();
    // for (var _ in _avaiableIpc) {
    //   _avaiableIpcSelected.add(false);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainScaffold.drawer(context),
      appBar: const AppBarBase(
        title: 'Set/Return - IPC',
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              // * Avaiable IPC
              child: Scaffold(
                appBar: AppBar(
                  elevation: 10.0,
                  title: const Text(
                    'Avaiable IPC',
                    //style: TextStyle(color: Colors.black),
                  ),
                  centerTitle: true,
                  //backgroundColor: Colors.green[100],
                ),
                backgroundColor: Colors.amber[100],
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    controller: _scrollControllerAvaiableIpc,
                    itemCount: _avaiableIpc.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: _avaiableIpc[index].isSelected
                            ? Colors.blue[50]
                            : Colors.white,
                        elevation: 5.0,
                        child: ListTile(
                          leading: _avaiableIpc[index].isSelected
                              ? const Icon(FeatherIcons.checkSquare)
                              : const Icon(FeatherIcons.square),
                          // leading: Visibility(
                          //   visible: _avaiableIpc[index].isSelected,
                          //   child: const Icon(Icons.check),
                          // ),
                          title: Text(
                            _avaiableIpc[index].ipcId,
                          ),
                          subtitle: Text(
                            'Tare Weight : ${_avaiableIpc[index].tareWight}',
                          ),
                          selected: _avaiableIpc[index].isSelected,
                          selectedColor: Colors.blue[900],
                          onTap: () {
                            setState(() {
                              _avaiableIpc[index].isSelected =
                                  !_avaiableIpc[index].isSelected;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // IconButton(
                //   onPressed: moveIpcUpward,
                //   icon: const Icon(Icons.arrow_upward_rounded),
                // ),
                // const SizedBox(
                //   height: 35.0,
                // ),
                IconButton(
                  onPressed: moveIpcRight,
                  icon: const Icon(Icons.arrow_forward_rounded),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                IconButton(
                  onPressed: moveIpcLeft,
                  icon: const Icon(Icons.arrow_back_rounded),
                ),
                // const SizedBox(
                //   height: 35.0,
                // ),
                // IconButton(
                //   onPressed: moveIpcDownward,
                //   icon: const Icon(Icons.arrow_downward_rounded),
                // ),
              ],
            ),
          ),
          // * Selected IPC
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Selected IPC',
                  ),
                  centerTitle: true,
                ),
                backgroundColor: Colors.orange[100],
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    controller: _scrollControllerSelectedIpc,
                    itemCount: _selectedIpc.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: _selectedIpc[index].isSelected
                            ? Colors.blue[50]
                            : Colors.white,
                        elevation: 5.0,
                        child: ListTile(
                          leading: _selectedIpc[index].isSelected
                              ? const Icon(FeatherIcons.checkSquare)
                              : const Icon(FeatherIcons.square),
                          // leading: Visibility(
                          //   visible: _selectedIpc[index].isSelected,
                          //   child: const Icon(Icons.check_sharp),
                          // ),
                          trailing: PopupMenuButton(
                            icon: const Icon(Icons.more_vert_sharp),
                            itemBuilder: (BuildContext context) {
                              return <PopupMenuEntry>[
                                PopupMenuItem(
                                  child: ListTile(
                                    title: const Text('Return'),
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Center(
                                              child: Text('Return IPC'),
                                            ),
                                            content: Text(
                                              'Do you wish to release ${_selectedIpc[index].ipcId}?',
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  releaseIpcApi();
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Return'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Cancel'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ];
                            },
                          ),
                          title: Text(
                            _selectedIpc[index].ipcId,
                          ),
                          subtitle: Text(
                            'Tare Weight : ${_selectedIpc[index].tareWight}',
                          ),
                          selected: _selectedIpc[index].isSelected,
                          selectedColor: Colors.blue[900],
                          onTap: () {
                            setState(
                              () {
                                _selectedIpc[index].isSelected =
                                    !_selectedIpc[index].isSelected;
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void moveIpcLeft() {
    _selectedIpc.asMap().forEach(
      (key, value) {
        if (value.isSelected == true) {
          IpcDataClass data = _selectedIpc[key].copyWith(isSelected: false);
          _avaiableIpc.add(data);
        }
      },
    );
    _selectedIpc.removeWhere((element) => element.isSelected == true);

    setState(() {});
  }

  void moveIpcRight() {
    _avaiableIpc.asMap().forEach(
      (key, value) {
        if (value.isSelected == true) {
          IpcDataClass data = _avaiableIpc[key].copyWith(isSelected: false);
          _selectedIpc.add(data);
        }
      },
    );

    _avaiableIpc.removeWhere((element) => element.isSelected == true);

    setState(() {});
  }

  void releaseIpcApi() async {
    // TODO : Implement IPC release API and reove the bellow exception
    throw UnimplementedError('Implement IPC release API');
  }

  void getIpcList() async {}
}
