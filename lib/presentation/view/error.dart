import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({
    Key? key,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
