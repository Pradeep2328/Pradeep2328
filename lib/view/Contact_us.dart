import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
  static const String routeName = '/contactus';

  const Contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Page"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                // navigaotr pop is used to return from the current page to previous page original page
                Navigator.pop(context);
              },
              child: const Text('Go back')),
        ));
  }
}
