import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:granulation/presentation/view/about_us.dart';
import 'package:granulation/presentation/view/common_widgets/authentication_widget.dart';
import 'package:granulation/presentation/view/contact_us.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:granulation/presentation/view/device_info.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

@immutable
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final RoundedLoadingButtonController _loginButtonController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactUs(),
                  ),
                );
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
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                );
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
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        controller: _refreshController,
        header: const WaterDropHeader(),
        onRefresh: _onRefresh,
        child: drawLoginScreen(),
      ),
    );
  }

  void _onRefresh() async {
    _userNameController.clear();
    _passwordController.clear();
    _loginButtonController.reset();
    //await Future.delayed(const Duration(milliseconds: 1500));
    _refreshController.refreshCompleted();
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
            UsernameTextFormField(
              controller: _userNameController,
              label: 'User Name',
            ),
            const SizedBox(
              height: 25.0,
            ),
            PasswordFormField(
              controller: _passwordController,
              label: 'Password',
            ),
            const SizedBox(
              height: 25.0,
            ),
            RoundedLoadingButton(
              onPressed: () async {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  final userName = _userNameController.text;
                  final password = _passwordController.text;
                  _loginButtonController.success();
                  return;
                }
                _loginButtonController.error();
                await Future.delayed(const Duration(milliseconds: 1500));
                _loginButtonController.reset();
              },
              controller: _loginButtonController,
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
