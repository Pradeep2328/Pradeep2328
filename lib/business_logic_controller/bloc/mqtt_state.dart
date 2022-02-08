part of 'mqtt_bloc.dart';

enum MqttStatus {
  connected,
  disconnected,
  subscribed,
  unsubscribed,
  subscribeFail,
  autoReconnect,
  autoReconnected
}

abstract class MqttState extends Equatable {
  final MqttStatus status;
  const MqttState({required this.status});

  @override
  List<Object> get props => [
        status,
      ];

  @override
  String toString() => 'MQTT Status : $status';
}

class MqttInitialState extends MqttState {
  const MqttInitialState() : super(status: MqttStatus.disconnected);
}

class MqttConnectedState extends MqttState {
  const MqttConnectedState() : super(status: MqttStatus.connected);
}

class MqttDisconnectedState extends MqttState {
  const MqttDisconnectedState() : super(status: MqttStatus.disconnected);
}

class MqttSubscribedState extends MqttState {
  const MqttSubscribedState() : super(status: MqttStatus.subscribed);
}

class MqttUnsubscribedState extends MqttState {
  const MqttUnsubscribedState() : super(status: MqttStatus.unsubscribed);
}

class MqttSubscribeFailState extends MqttState {
  const MqttSubscribeFailState() : super(status: MqttStatus.subscribeFail);
}

class MqttAutoReconnectState extends MqttState {
  const MqttAutoReconnectState() : super(status: MqttStatus.autoReconnect);
}

class MqttAutoReconnectedState extends MqttState {
  const MqttAutoReconnectedState() : super(status: MqttStatus.autoReconnected);
}
