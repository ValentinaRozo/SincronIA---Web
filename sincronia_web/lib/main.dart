import 'package:flutter/material.dart';
import 'package:sincronia_web/views/pantalla_inicio_sesion.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SincronIA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE3F2FD)),
        useMaterial3: true,
      ),
      home: const PantallaInicioSesion(),
    );
  }
}
