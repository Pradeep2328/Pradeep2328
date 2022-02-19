import 'package:chopper/chopper.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/drop_down_search/product_code.dart';

part 'dropdown_searchable_list.chopper.dart';

@ChopperApi()
abstract class DropDownSearchableList extends ChopperService {
  @Get(path: DropDownUrl.productCodeUrl)
  Future<Response<ProductCodeApiModel>> getProductCodes();
  //Future<Response> getProductCodes();

  static DropDownSearchableList create([ChopperClient? client]) =>
      _$DropDownSearchableList(client);
}
