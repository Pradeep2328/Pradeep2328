// serializers.dart

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:granulation/models/shifting/mesh_size_sieve.dart';
import 'ipc_list.dart';

part 'serializers.g.dart';

@SerializersFor([
  IpcList,
  MeshSizeSieve,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
