import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:granulation/common/messages.dart';
import 'package:network_info_plus/network_info_plus.dart';

class DeviceInfo extends StatefulWidget {
  DeviceInfo({Key? key}) : super(key: key);

  @override
  _DeviceInfoState createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  final info = NetworkInfo();
  String wifiName = '';
  String wifiBSSID = '';
  String wifiIP = '';
  String wifiIPv6 = '';
  String wifiSubmask = '';
  String wifiBroadcast = '';
  String wifiGateway = '';

  @override
  void initState() {
    super.initState();
    getnetworkInfo();
  }

  getnetworkInfo() async {
    if (!kIsWeb) {
      wifiName = await info.getWifiName() ?? '';
      wifiBSSID = await info.getWifiBSSID() ?? '';
      wifiIP = await info.getWifiIP() ?? '';
      wifiIPv6 = await info.getWifiIPv6() ?? '';
      wifiSubmask = await info.getWifiSubmask() ?? '';
      wifiBroadcast = await info.getWifiBroadcast() ?? '';
      wifiGateway = await info.getWifiGatewayIP() ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          TextButton.icon(
            label: const Text('Back'),
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
