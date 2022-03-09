import 'package:flutter/material.dart';
import 'package:granulation/presentation/view/shifting/Policy.dart';
import 'package:granulation/presentation/view/shifting/who_we_are.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('About Us'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Tab>[
              Tab(
                child: Text('Who We Are'),
              ),
              Tab(
                child: Text('Policy'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            whoweare(),
            Policy(),
            // Text('Who We Are'),
            // Text('Policy'),
          ],
        ),
      ),
    );
  }
}
