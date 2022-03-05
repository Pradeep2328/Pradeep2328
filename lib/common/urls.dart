class CommonUrl {
  static const authentication = '/authentication';
  static const login = '/login';
  static const cleanedByUserName = '/cleanedByUserName';
  static const checkedByUserName = '/checkedByUserName';
  static const verifiedByUserName = '/verifiedByUserName';
  static const getDateTime = '/get-date-time';
  static const getProductCode = "/productCode";
}

class DropDownCommonUrl {
  static const productCode = '/GRAN_INTER/BatchSetting/getAllProductCode';
  static const batchNumber = '/GRAN_INTER/BatchSetting/getBatchOnProduct';
  static const ipcIdUrl = '/ipc-id';
  static const ipcStatusUrl = '/ipc-status';
  static const nextStepUrl = '/next-step';
  static const labelHeaderUrl = '/label-header';
  // * Mesh Size of Sieve
  static const meshSize = '/meshSize';
}

class SiftingUrl {
  // * Instrument Cleaning
  static const instrumentCodeUrl = '/GRAN_INTER/AreaMaster/getAllInstruCode';
  static const instrumentTypeUrl = '/GRAN_INTER/AreaMaster/getAllInstruType';
  static const previousProductCodeUrl = '/previousProductCode';
  // static const previousProductBatchNumberUrl =
  //     '/GRAN_INTER/BatchSetting/getBatchOnProduct';
  static const areaUrl = '/GRAN_INTER/AreaMaster/getAllArea';
  static const allRoomName = '/GRAN_INTER/AreaMaster/getAllRoomName';
  static const allStage = '/GRAN_INTER/AreaMaster/getAllStage';
  static const productUrl = '/GRAN_INTER/Product/getProduct';
  static const cleaningType = '/cleaningType';

  static const prevProductCodeUrl = '/GRAN_INTER/Product/getAllprevProductCode';

  static const screenSize = '/screenSize';

  // * Mesh Size of Sieve
  static const materialSifted = '/material-sifted';
  static const meshSieze = '/mesh-sieze';
  static const ipcid = '/ipc-id';
}
