// serializers.dart

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:granulation/models/login.dart';
import 'package:granulation/models/logout.dart';
import 'package:granulation/models/shifting/mesh_size_sieve.dart';
import 'package:granulation/models/ipc_list.dart';

part 'serializers.g.dart';

@SerializersFor([
  Login,
  Logout,
  IpcList,
  MeshSizeSieve,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
