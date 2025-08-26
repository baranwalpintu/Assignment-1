import 'package:assignment/providers/auth_provider.dart';
import 'package:assignment/providers/products_provider.dart';
import 'package:assignment/services/api_client.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => AuthProvider(
              apiClient: ApiClient(baseUrl: 'https://api.escuelajs.co/api/v1'),
            ),
          ),
          ChangeNotifierProvider(
            create: (_) => ProductsProvider(), 
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Login Demo',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: const LoginScreen(), // Start with Login Screen
        ));
  }
}
