import 'package:granulation/api/authentication.dart';
import 'package:granulation/api/main_chopper_client.dart';
import 'package:granulation/api/dropdown_searchable_list.dart';

class ApiService {
  // * For Login, Logout, Switch User
  static final authenticationService =
      AuthenticationServices.create(MainChopperClient.client);
  // * For all DropDownSerachFields
  static final dropdownSearchService =
      DropDownSearchableList.create(MainChopperClient.client);
}
