import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/load_screen.dart';
import 'screens/login_screen.dart';
import 'screens/cadastro_screen.dart';
import 'screens/recuperar_senha_screen.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const LoadScreen(),
      routes: {
        '/login': (context) => const Login(),
        '/cadastro': (context) => const Cadastro(),
        '/recuperar-senha': (context) => const RecuperarSenha(),
      },
    );
  }
}