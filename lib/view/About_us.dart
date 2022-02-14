import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  static const String routeName = '/contactus';

  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About Page"),
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
