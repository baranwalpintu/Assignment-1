import 'package:flutter/foundation.dart';
import '../services/api_client.dart';
import '../models/login_response.dart';

class AuthProvider extends ChangeNotifier {
  final ApiClient apiClient;
  AuthProvider({required this.apiClient});

  bool _isLoading = false;
  String? _errorMessage;
  LoginResponse? _loginResponse;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  LoginResponse? get loginResponse => _loginResponse;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final response = await apiClient.post(
        '/auth/login',
        {"email": email, "password": password},
      );

      _loginResponse = LoginResponse.fromJson(response);
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
