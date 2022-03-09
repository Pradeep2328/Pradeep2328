import 'package:flutter/material.dart';

// ignore: camel_case_types
class whoweare extends StatefulWidget {
  const whoweare({Key? key}) : super(key: key);

  @override
  State<whoweare> createState() => _whoweareState();
}

// ignore: camel_case_types
class _whoweareState extends State<whoweare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Who We Are?',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro-Bold',
                      fontSize: 23,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      letterSpacing: 3,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Text(
                  '''TantraSoft Solutions (India) Pvt. Ltd. was incorporated on 21 December 2006 by a group of technocrats with the support of NRI equity. Their experience and vision are the founding stones of TantraSoft’s electronic data management system.
      
Generating reports by noting down the values from various equipment is a very common practice in every industry.
      
Also, every department (Production, Quality Control, Inventory, Stores, etc.) has to use these reports for their day to day work. Manually generating these reports is not only time consuming but also subject to human error.

We at Tantrasoft, realized the need for an  electronic data transfer and developed our own electronic data management system \nwhich takes input from the instruments/equipment and also generates the complex reports required by the user. The system supports 21 CFR part 11 compliance.''',
                  maxLines: 50,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SourceSansPro-Regular',
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Our Brand Values',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Bold',
                    decoration: TextDecoration.underline,
                    fontSize: 23,
                    color: Colors.black,
                    letterSpacing: 3,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: MyBullet(),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    'Innovative Solutions',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro-Regular',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListTile(
                  leading: MyBullet(),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Text(
                      'Quality Product',
                      style: TextStyle(fontFamily: 'SourceSansPro-Regular'),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    'Competitive Price',
                    style: TextStyle(fontFamily: 'SourceSansPro-Regular'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: ListTile(
                  leading: MyBullet(),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Text(
                      'Efficient After Sales support on pan India Basis',
                      style: TextStyle(fontFamily: 'SourceSansPro-Regular'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
