import 'package:app_cantor_cristao_guajajara/design/theme.dart'; // Importe o arquivo com o tema
import 'package:app_cantor_cristao_guajajara/views/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cantor Cristão',
      theme: AppTheme.theme, // Use o tema definido
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
