import 'package:mqtt_client/mqtt_client.dart';
import 'package:granulation/common/global.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MqttClientWrapper {
  late MqttServerClient _client;

  final _topicOut = '${DeviceInfo.serialNumber}_out';
  final _topicIn = '${DeviceInfo.serialNumber}_in';

  //Connect to broker
  Future<void> connect() async {
    try {
      _setupMqttClient();
      MqttClientConnectionStatus? connectionStatus = await _client.connect();

      _client.subscribe(_topicIn, MqttQos.exactlyOnce);
      _client.updates!
          //.listen((List<MqttReceivedMessage<MqttMessage>> messages) {
          .listen((dynamic messages) {
        final MqttPublishMessage message = messages[0].payload;
        final payload =
            MqttPublishPayload.bytesToStringAsString(message.payload.message);
        print('Data Received. Payload : $payload');
      });
    } catch (e) {
      //TODO Implement onConnected and also logger and then delete the bellow error
      throw UnimplementedError('connect not implemented');
    }
  }

  //Setup ports and callback
  void _setupMqttClient() {
    _client = _client = MqttServerClient.withPort(
      '192.168.1.139',
      'ahiiufenfwufe98fcedcwff32w3fv021',
      1883,
    );
    //ServerAddress.apiUri, DeviceInfo.serialNumber, ServerAddress.mqttPort);
    _client.keepAlivePeriod = 30;
    _client.autoReconnect = true;

    final connectMessage = MqttConnectMessage()
        .withWillTopic(_topicOut)
        .withWillQos(MqttQos.exactlyOnce)
        .withWillMessage('Disconnected')
        .startClean();

    _client.connectionMessage = connectMessage;

    //_client.useWebSocket = kIsWeb ? true : false;
    // _client.onConnected = _onConnected;
    // _client.onDisconnected = _onDisconnected;
    // _client.onSubscribed = _onSubscribed;
    // _client.onUnsubscribed = _onUnsubscribed;
    // _client.onSubscribeFail = _onSubscribeFail;
    // _client.onAutoReconnect = _onAutoReconnect;
    // _client.onAutoReconnected = _onAutoReconnected;
    // _client.pongCallback = _pong;
    _client.logging(on: true);
  }

  void sendData({required String data}) {
    try {
      final payloadBuilder = MqttClientPayloadBuilder();
      payloadBuilder.addString(data);
      var messageId = _client.publishMessage(
          _topicOut, MqttQos.exactlyOnce, payloadBuilder.payload!);
      print('Message ID : $messageId');
    } catch (e) {
      //TODO Implement Logger
    }
  }

  void _onConnected() {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onConnected not implemented');
  }

  void _onDisconnected() {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onDisconnected not implemented');
  }

  void _onAutoReconnect() {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onAutoReconnect not implemented');
  }

  void _onAutoReconnected() {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onAutoReconnected not implemented');
  }

  void _onSubscribed(String topic) {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onSubscribed not implemented');
  }

  void _onUnsubscribed(String? topic) {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onUnsubscribed not implemented');
  }

  void _onSubscribeFail(String topic) {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_onUnsubscribed not implemented');
  }

  void _pong() {
    //TODO Implement onConnected and also logger and then delete the bellow error
    throw UnimplementedError('_pong not implemented');
  }
}
