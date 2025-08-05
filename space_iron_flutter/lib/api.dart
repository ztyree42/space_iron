import 'dart:convert';
import 'package:http/http.dart' as http;

/// Utility to switch between mock and real backend.
///
/// By default, uses the mock server at http://localhost:4000.
/// To use the real backend, set the `USE_MOCK_API` environment variable to `false` at build time:
///   flutter run --dart-define=USE_MOCK_API=false
/// You can also change the real backend URL below.
class ApiConfig {
  static const bool useMock = bool.fromEnvironment('USE_MOCK_API', defaultValue: true);
  static String get baseUrl => useMock ? 'http://localhost:4000' : 'https://your-real-backend-url.com';
}

class ApiService {
  static Future<List<dynamic>> fetchPlayers() async {
    final response = await http.get(Uri.parse('${ApiConfig.baseUrl}/players'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load players');
    }
  }
  // Add more methods for other endpoints as needed.
}
