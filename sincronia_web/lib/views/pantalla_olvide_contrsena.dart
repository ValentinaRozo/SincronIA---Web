import 'package:flutter/material.dart';
import 'package:sincronia_web/widgets/button.dart';
import 'package:sincronia_web/widgets/text_field.dart';

class PantallaOlvideContrasena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFE3F2FD),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/fondo.png', 
              height: size.height * 0.4,
              fit: BoxFit.contain,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    Image.asset(
                      'assets/logo_SincronIA.png',
                      height: 150,
                    ),
                    const SizedBox(height: 20),
                    
                    const Text(
                      'Recuperar contraseña',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color:  Color(0xFF0D47A1),
                      ),
                    ),
                    const SizedBox(height: 10),
                    
                    const Text(
                      'Ingresa tu correo electrónico y se te enviará el enlace de recuperación',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xFF1976D2),
                      ),
                    ),
                    const SizedBox(height: 30),
                    
                    const CustomTextField(
                      labelText: 'Correo Electrónico',
                      hintText: 'Escribe tu correo',
                      width: 800.0,
                    ),
                    const SizedBox(height: 20),
                    
                    CustomButton(
                      text: 'REESTABLECER CONTRASEÑA',
                      width: 400.0,
                      onPressed: () {
                      },
                      baseColor: const Color(0xFF1976D2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}