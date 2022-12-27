import 'package:leads_test/src/data/datasources/api_provider.dart';
import 'package:leads_test/src/data/model/list_event_model.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<ListEventModel> fetchEventList() {
    return _provider.fetchData();
  }

  Future<String> redirectUrl() {
    return _provider.checkRedirect();
  }
}
