class ServerUrl {
  static late final String apiUrl;
}

class SiftingUrl {
  static final productCodeUrl = '${ServerUrl.apiUrl}/productCode';
  static final instrumentCodeUrl = '${ServerUrl.apiUrl}/instrumentCode';
  static final previousProductCodeUrl =
      '${ServerUrl.apiUrl}/previousProductCode';
  static final previousProductBatchNumberUrl =
      '${ServerUrl.apiUrl}/product-code';
  static final cleaningType = '${ServerUrl.apiUrl}/cleaningType';
  static final meshSize = '${ServerUrl.apiUrl}/meshSize';
  static final screenSize = '${ServerUrl.apiUrl}/screenSize';
  static final cleanedByUserName = '${ServerUrl.apiUrl}/cleanedByUserName';
  static final checkedByUserName = '${ServerUrl.apiUrl}/checkedByUserName';
  static final verifiedByUserName = '${ServerUrl.apiUrl}/verifiedByUserName';
}
