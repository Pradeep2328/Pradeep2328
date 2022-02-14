class ServerUrl {
  static String apiUrl = '';
  // static late String apiUrl;
}

class CommonUrl {
  static final cleanedByUserName = '${ServerUrl.apiUrl}/cleanedByUserName';
  static final checkedByUserName = '${ServerUrl.apiUrl}/checkedByUserName';
  static final verifiedByUserName = '${ServerUrl.apiUrl}/verifiedByUserName';
  static final getDateTime = '${ServerUrl.apiUrl}/get-date-time';
}

class DropDownUrl {
  static final ipcId = '${ServerUrl.apiUrl}/ipc-id';
  static final ipcStatus = '${ServerUrl.apiUrl}/ipc-status';
  static final nextStep = '${ServerUrl.apiUrl}/next-step';
  static final labelHeader = '${ServerUrl.apiUrl}/label-header';
}

class SiftingUrl {
  // * Instrument Cleaning
  static final productCodeUrl = '${ServerUrl.apiUrl}/productCode';
  static final instrumentCodeUrl = '${ServerUrl.apiUrl}/instrumentCode';
  static final previousProductCodeUrl =
      '${ServerUrl.apiUrl}/previousProductCode';
  static final previousProductBatchNumberUrl =
      '${ServerUrl.apiUrl}/product-code';
  static final cleaningType = '${ServerUrl.apiUrl}/cleaningType';
  static final meshSize =
      '${ServerUrl.apiUrl}/meshSize'; // ? Also used in Mesh Size of Sieve
  static final screenSize = '${ServerUrl.apiUrl}/screenSize';

  // * Mesh Size of Sieve

  static final materialSifted = '${ServerUrl.apiUrl}/material-sifted';
}
