import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:granulation/presentation/view/device_info.dart';

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

// class MainAuthentication{
//   S
// }