// serializers.dart
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:built_value/standard_json_plugin.dart';

import 'package:granulation/models/drop_down_search/ipc_id_list.dart';
import 'package:granulation/models/drop_down_search/ipc_list.dart';
import 'package:granulation/models/drop_down_search/ipc_next_step.dart';
import 'package:granulation/models/drop_down_search/ipc_status_list.dart';

import 'package:granulation/models/sifting/instrument_code.dart';
import 'package:granulation/models/sifting/material_sifted.dart';
import 'package:granulation/models/sifting/mesh_size_sieve.dart';

part 'serializers.g.dart';

@SerializersFor([
  IpcIdList,
  IpcList,
  IpcStatusList,
  IpcNextStep,
  InstrumentCode,
  MeshSizeSieve,
  MaterialSifted,
  DateTime,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
