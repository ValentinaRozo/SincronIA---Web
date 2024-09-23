import 'package:flutter/material.dart';

class PantallaOlvideContrasena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olvidé mi contraseña'),
      ),
      body: const Center(
        child: Text(
          'Pantalla para recuperar contraseña',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
