import 'package:flutter/material.dart';

class PantallaCambiarContrasena extends StatelessWidget {
  const PantallaCambiarContrasena({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Pantalla para cambiar contraseña',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
