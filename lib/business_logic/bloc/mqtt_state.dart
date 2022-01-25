part of 'mqtt_bloc.dart';

abstract class MqttState extends Equatable {
  const MqttState();
  
  @override
  List<Object> get props => [];
}

class MqttInitial extends MqttState {}
