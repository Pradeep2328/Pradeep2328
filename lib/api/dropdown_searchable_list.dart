import 'package:chopper/chopper.dart';
import 'package:granulation/common/urls.dart';

import '../models/drop_down_search/dropdown.dart';

part 'dropdown_searchable_list.chopper.dart';

@ChopperApi()
abstract class DropDownSearchableList extends ChopperService {
  @Get(path: DropDownCommonUrl.productCode)
  Future<Response<ProductCodeResponse>> getProductCodes();

  @Get(path: SiftingUrl.prevProductCodeUrl)
  Future<Response<ProductCodeResponse>> getPreviousProductCode();

  // @Get(path: '${DropDownCommonUrl.batchNumber}/{prod_code}')
  @Post(path: DropDownCommonUrl.batchNumber)
  Future<Response<BatchNumberResponse>> getBatchNumber({
    // @Path('prod_code') required String productCode
    @Body() required Map<String, dynamic> body,
  });

  @Get(path: SiftingUrl.areaUrl)
  Future<Response<AreaResponse>> getArea();

  @Get(path: SiftingUrl.allRoomName)
  Future<Response<RoomResponse>> getRoomName();

  @Get(path: SiftingUrl.allStage)
  Future<Response<StageResponse>> getStage();

  @Get(path: SiftingUrl.productUrl)
  Future<Response<ProductDetailsResponse>> getProductDetails(
      @Body() Map<String, dynamic> body);

  @Get(path: SiftingUrl.instrumentTypeUrl)
  Future<Response<InstrumentTypeResponse>> getInstruType();

  @Get(path: SiftingUrl.instrumentCodeUrl)
  Future<Response<InstrumentCodeResponse>> getInstruCode();

  //Future<Response> getProductCodes();

  static DropDownSearchableList create([ChopperClient? client]) =>
      _$DropDownSearchableList(client);
}
