import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mqtt_event.dart';
part 'mqtt_state.dart';

enum MqttEventEnum {
  connecting,
  connected,
  autoReconnect,
  autoReconnected,
  subscribed,
  unsubscribed,
  subscribeFail,
  dataReceived,
  disconnected
}

class MqttBloc extends Bloc<MqttEvent, MqttState> {
  MqttBloc() : super(MqttInitial()) {
    on<MqttEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
