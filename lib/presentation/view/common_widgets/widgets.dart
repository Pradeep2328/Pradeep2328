//import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:granulation/presentation/view/device_information.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MainScaffold {
  static AppBar appBar(String title) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
    );
  }

  static Drawer drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Image.asset(
              'images/tantrasoft-logo.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.miscellaneous_services),
            iconColor: Colors.blue,
            title: const Text(
              'Device Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Colors.black,
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeviceInfomation(),
                ),
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support),
            iconColor: Colors.blue,
            title: const Text(
              'Contact Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Colors.black,
            onTap: () {
              //TODO Implement Contact Us
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            iconColor: Colors.blue,
            title: const Text(
              'About Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Colors.black,
            onTap: () {
              //TODO Implement About Us
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.switch_account),
            iconColor: Colors.orange,
            title: const Text(
              'Switch User',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Colors.black,
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Switch User'),
                    content: const Text('Do you wish to Switch User?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          //TODO Implement Change User API and push replace login page
                          //TODO Implement push replace with different user
                        },
                        child: const Text('Switch User'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            iconColor: Colors.red,
            title: const Text(
              'Logout',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Colors.black,
            onTap: () async {
              await showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Do you wish to logout?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          //TODO Implement Logout API and push replace login page
                          Navigator.pop(context);
                        },
                        child: const Text('Logout'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class ToogleRemarkWidget extends StatefulWidget {
  final TextEditingController textController;
  final String label;
  const ToogleRemarkWidget({
    required this.textController,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  State<ToogleRemarkWidget> createState() => _ToogleRemarkWidgetState();
}

class _ToogleRemarkWidgetState extends State<ToogleRemarkWidget> {
  //final TextEditingController _textController = TextEditingController();
  int _toggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: kIsWeb ? 2 : 4,
              child: Text(widget.label),
            ),
            Expanded(
              flex: kIsWeb ? 3 : 6,
              child: Center(
                child: ToggleSwitch(
                  totalSwitches: 2,
                  initialLabelIndex: _toggleIndex,
                  labels: const ['Okay', 'Not Okay'],
                  icons: const <IconData>[
                    FeatherIcons.check,
                    FeatherIcons.x,
                  ],
                  activeBgColors: const [
                    [Colors.green],
                    [Colors.red]
                  ],
                  minWidth: 125.0,
                  // animate: true,
                  onToggle: (index) {
                    if (index == 0) {
                      widget.textController.clear();
                    }
                    setState(() {
                      _toggleIndex = index!;
                    });
                  },
                  cornerRadius: 20.0,
                ),
              ),
            ),
            if (kIsWeb) remarkTextFieldDisplay(),
          ],
        ),
        if (!kIsWeb)
          const SizedBox(
            height: 25.0,
          ),
        Row(
          children: <Widget>[
            if (!kIsWeb) remarkTextFieldDisplay(),
          ],
        )
      ],
    );
  }

  Expanded remarkTextFieldDisplay() {
    return Expanded(
      flex: kIsWeb ? 5 : 10,
      child: TextFormField(
        enabled: _toggleIndex == 0 ? false : true,
        controller: widget.textController,
        decoration: InputDecoration(
          icon: const Icon(Icons.note_add),
          label: Text(widget.label),
          hintText: 'Enter ${widget.label}',
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (_toggleIndex == 1 && (value == null || value.isEmpty)) {
            return 'Please enter ${widget.label} By'; //Validation error
          }
          return null; //Validation Success
        },
      ),
    );
  }
}

class ReadOnlyTextWidget extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function() onPressedCallback;
  const ReadOnlyTextWidget({
    required this.controller,
    required this.label,
    required this.onPressedCallback,
    Key? key,
  }) : super(key: key);

  @override
  State<ReadOnlyTextWidget> createState() => _ReadOnlyTextWidgetState();
}

class _ReadOnlyTextWidgetState extends State<ReadOnlyTextWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
          label: Text(widget.label),
          hintText: 'Enter ${widget.label}',
          border: const OutlineInputBorder(),
          icon: TextButton.icon(
            onPressed: widget.onPressedCallback,
            label: const Text('Refresh'),
            icon: const Icon(Icons.refresh),
          )),
      readOnly: true,
    );
  }
}
