// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contact-Us')),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: RichText(
                // ignore: prefer_const_literals_to_create_immutables
                text: const TextSpan(children: [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                      child: Text(
                        'Corporate Office Address',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(text: ''),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 30, 0, 0),
                                  child: Icon(Icons.home),
                                ),
                              ),
                              TextSpan(
                                  text:
                                      '   A-403, Mathuria Apts, Sir M.V.Road,\n         Andheri (E), Mumbai-400069.'),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(text: ''),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Icon(Icons.email),
                                ),
                              ),
                              TextSpan(
                                  text:
                                      '   contact@tantrasoftsolutions.com \n         (Sales enquiries)'),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(text: ''),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Icon(Icons.email),
                                ),
                              ),
                              TextSpan(
                                  text:
                                      '   care@tantrasoftsolutions.com \n         (Customer care)'),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(text: ''),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Icon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              TextSpan(text: '   Connect on Linkedin'),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            children: [
                              TextSpan(text: ''),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Icon(Icons.phone_android),
                                ),
                              ),
                              TextSpan(text: '   98225560554')
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // Center(
            //   child: AnimatedTextKit(animatedTexts: [
            //     ScaleAnimatedText('ThankYou!'),
            //     ScaleAnimatedText('For Contacting Us')
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }
}
