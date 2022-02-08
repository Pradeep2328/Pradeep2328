import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mqtt_event.dart';
part 'mqtt_state.dart';

class MqttBloc extends Bloc<MqttEvent, MqttState> {
  StreamSubscription<int>? _mqttStreamSubscription;
  MqttBloc() : super(const MqttInitialState()) {
    on<MqttEvent>((event, emit) {
      print('Inside BLoC constructor');
    });
  }

  @override
  Future<void> close() {
    _mqttStreamSubscription?.cancel();
    return super.close();
  }
}
