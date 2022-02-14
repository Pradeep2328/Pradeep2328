import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:network_info_plus/network_info_plus.dart';

class DeviceInfomation extends StatefulWidget {
  const DeviceInfomation({Key? key}) : super(key: key);

  @override
  _DeviceInfomationState createState() => _DeviceInfomationState();
}

class _DeviceInfomationState extends State<DeviceInfomation> {
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
