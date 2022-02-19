import 'package:shared_preferences/shared_preferences.dart';

class ServerConfiguration {
  static const _serverApiIpAddressKey = 'ServerApiIpAddress';
  static const _serverApiPortNumberKey = 'ServerApiPortNumber';
  static const _mqttBrokerIpAddressKey = 'MqttBrokerIpAddress';
  static const _mqttBrokerPortNumberKey = 'MqttBrokerPortNumber';

  static String _serverIpAddress = '192.168.1.167';
  static int _serverPortNumber = 4000;

  static final serverUri =
      'http://${ServerConfiguration._serverIpAddress}:${ServerConfiguration._serverPortNumber}';

  static String mqttBrokerIpAddress = '';
  static int mqttPortNumber = 1883;
  static final mqttUri = 'tcp://$mqttBrokerIpAddress:$mqttPortNumber';

  static Future<bool> getServerConfiguration() async {
    final preference = await SharedPreferences.getInstance();
    _serverIpAddress = preference.getString(_serverApiIpAddressKey) ?? '';
    _serverPortNumber = preference.getInt(_serverApiPortNumberKey) ?? 3000;
    mqttBrokerIpAddress = preference.getString(_mqttBrokerIpAddressKey) ?? '';
    mqttPortNumber = preference.getInt(_mqttBrokerPortNumberKey) ?? 1883;
    return true;
  }

  static Future<bool> setServerConfiguration({
    required String serverIp,
    required int serverPort,
    required String mqttIp,
    required int mqttPort,
  }) async {
    final preference = await SharedPreferences.getInstance();
    await preference.setString(_serverApiIpAddressKey, serverIp);
    await preference.setInt(_serverApiPortNumberKey, serverPort);
    await preference.setString(_mqttBrokerIpAddressKey, mqttIp);
    await preference.setInt(_mqttBrokerPortNumberKey, mqttPort);
    return true;
  }
}

class DeviceInfo {
  static String serialNumber = 'abc';
}
