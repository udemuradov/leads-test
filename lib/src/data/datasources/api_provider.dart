
import 'package:dio/dio.dart';
import 'package:leads_test/src/data/model/list_event_model.dart';

class ApiProvider {
  final Dio _dio = Dio();
  late final String finalRedirectUrl;
  final String _urlCard =
      'https://www.thesportsdb.com/api/v2/json/40130162/livescore.php?s=Basketball';
  final String _urlRedirect =
      'https://kueski.shop/cq1al3k.php?key=9ckcsrbnkseenkjkuh04&amp;sub1=test1';
  Future<ListEventModel> fetchData() async {
    Response response = await _dio.get(_urlCard);
    if (response.statusCode == 200) {
      return ListEventModel.fromJson(response.data);
    } else {
      throw Exception("Internet Error");
    }
  }

  Future<String> checkRedirect() async {
    try {
      Response response = await _dio.get(_urlRedirect);
      if (response.statusCode == 200) {
        finalRedirectUrl = response.redirects[0].location.toString();
        return finalRedirectUrl;
      } else {
        throw Exception("Internet Error");
      }
    } catch (e) {
      print(e);
      return e.toString();
    }
  }
}
