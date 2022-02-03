import 'dart:convert';

import 'package:flutter/widgets.dart';

@immutable
class IpcDataClass {
  final String ipcId;
  final String tareWight;

  const IpcDataClass({
    required this.ipcId,
    required this.tareWight,
  });

  IpcDataClass copyWith({
    required String ipcId,
    required String tareWight,
  }) {
    return IpcDataClass(
      ipcId: ipcId,
      tareWight: tareWight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ipcId': ipcId,
      'tareWight': tareWight,
    };
  }

  factory IpcDataClass.fromMap(Map<String, dynamic> map) {
    return IpcDataClass(
      ipcId: map['ipcId'] ?? '',
      tareWight: map['tareWight'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory IpcDataClass.fromJson(String source) =>
      IpcDataClass.fromMap(json.decode(source));

  @override
  String toString() => 'IpcDataClass(ipcId: $ipcId, tareWight: $tareWight)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IpcDataClass &&
        other.ipcId == ipcId &&
        other.tareWight == tareWight;
  }

  @override
  int get hashCode => ipcId.hashCode ^ tareWight.hashCode;
}
