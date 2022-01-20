import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../common/messages.dart';
import 'device_info.dart';

@immutable
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login')),
      ),
      drawer: Drawer(
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
                'System Configuration',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
              },
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeviceInfo(),
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.power_settings_new),
              iconColor:
                  (!kIsWeb && Platform.isAndroid) ? Colors.red : Colors.grey,
              title: const Text(
                'Shut-Down',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor:
                  (!kIsWeb && Platform.isAndroid) ? Colors.black : Colors.grey,
              onTap: (!kIsWeb && Platform.isAndroid) ? shutDownDevice : null,
            ),
          ],
        ),
      ),
      body: drawLoginScreen(),
    );
  }

  //Actually Draws the Login Form
  Form loginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: userNameController,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                label: Text('User Name'),
                hintText: 'Enter your user name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter user name'; //Validation error
                }
                return null; //Validation Success
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                icon: const Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() => _passwordVisible = !_passwordVisible);
                  },
                  icon: Icon(!_passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                label: const Text('Password'),
                hintText: 'Please Enter Password',
                border: const OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  final userName = userNameController.text;
                  final password = passwordController.text;
                }
              },
              child: const Text('Log-In'),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawLoginScreen() {
    if (kIsWeb) {
      return Row(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/tantrasoft-logo.jpg',
              width: 500.0,
              height: 500.0,
            ),
            flex: 5,
          ),
          const VerticalDivider(),
          Expanded(
            child: loginForm(),
            flex: 5,
          ),
        ],
      );
    } else {
      return loginForm();
    }
  }

  shutDownDevice() async {
    if (!kIsWeb && Platform.isAndroid) {
      await showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Logout'),
            content: const Text('Do you wih to logout?'),
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
    } else {
      null;
    }
  }
}
