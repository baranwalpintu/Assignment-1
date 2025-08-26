import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;

  ApiClient({required this.baseUrl});

  Future<Map<String, dynamic>> post(
    String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.post(
      Uri.parse(baseUrl + endpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );


    if (response.statusCode >= 200 && response.statusCode < 202) {
      final data = jsonDecode(response.body);
      if (data['access_token'] != null) {
        return data;
      } else {
        throw Exception('Login failed: access token not found');
      }
    } else if (response.statusCode == 401) {
      throw Exception('Login failed: Unauthorized (invalid credentials)');
    } else if (response.statusCode == 403) {
      throw Exception('Login failed: Forbidden');
    } else {
      throw Exception('Login failed with status: ${response.statusCode}');
    }
  }
}
