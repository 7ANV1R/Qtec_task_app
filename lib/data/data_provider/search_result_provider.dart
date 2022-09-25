import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class SearchResultApiImp {
  Future<List<dynamic>> getSearchResult({required String query}) async {
    List data = [];

    final headers = {
      'Content-Type': 'application/json',
    };

    final url =
        Uri.parse('https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=$query');

    try {
      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(utf8.decode(response.bodyBytes));

        final result = responseData['data']['products']['results'];

        data.addAll(result);
        log(data.toString());
        return data;
      }
    } catch (e) {
      log('Eroor $e');
    }

    return data;
  }
}
