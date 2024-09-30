import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';

  Future<String> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load notifications');
    }
  }
}