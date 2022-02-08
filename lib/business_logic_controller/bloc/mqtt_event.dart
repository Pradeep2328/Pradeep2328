part of 'mqtt_bloc.dart';

abstract class MqttEvent extends Equatable {
  const MqttEvent();

  @override
  List<Object> get props => [];
}

class MqttConnectingEvent extends MqttEvent {
  const MqttConnectingEvent();

  @override
  List<Object> get props => [];
}

class MqttConnectedEvent extends MqttEvent {
  const MqttConnectedEvent();

  @override
  List<Object> get props => [];
}

class MqttAutoReconnectEvent extends MqttEvent {
  const MqttAutoReconnectEvent();

  @override
  List<Object> get props => [];
}

class MqttAutoReconnectedEvent extends MqttEvent {
  const MqttAutoReconnectedEvent();

  @override
  List<Object> get props => [];
}

class MqttSubscribedEvent extends MqttEvent {
  final String topic;
  const MqttSubscribedEvent({
    required this.topic,
  });

  @override
  List<Object> get props => [];
}

class MqttUnsubscribedEvent extends MqttEvent {
  final String topic;
  const MqttUnsubscribedEvent({
    required this.topic,
  });

  @override
  List<Object> get props => [];
}

class MqttSubscribeFailEvent extends MqttEvent {
  final String topic;
  const MqttSubscribeFailEvent({
    required this.topic,
  });

  @override
  List<Object> get props => [];
}

class MqttDataReceivedEvent extends MqttEvent {
  final String dataReceived;
  const MqttDataReceivedEvent({
    required this.dataReceived,
  });

  @override
  List<Object> get props => [dataReceived];
}

class MqttDisconnectedEvent extends MqttEvent {
  const MqttDisconnectedEvent();

  @override
  List<Object> get props => [];
}
