import 'package:flutter/material.dart';

class Policy extends StatefulWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
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
                  'Quality Policy',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  '''Tantrasoft Solutions (I) Pvt. Ltd. is committed in providing  high quality Electronic Data Management Systems that complies with \nregulatory requirements and is supported by strong after-sales support.
      
Our goal is to provide industry’s best products and services \nat the most affordable price. We strive to achieve this through continual improvement in the effectiveness of Quality Management System..''',
                  maxLines: 50,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    letterSpacing: 0.0,
                    fontFamily: 'SourceSansPro-Regular',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                'Vision',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  '''To be the leading global automation solution provider by enabling industries to increase efficiency through automation with cost effective and reliable systems.''',
                  maxLines: 50,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mission',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  '''To find best means of developing technological expertise and achieving profitability, thus delivering outstanding value for customers.
      ''',
                  maxLines: 50,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro-Regulars',
                    fontSize: 15,
                    color: Colors.black,
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
