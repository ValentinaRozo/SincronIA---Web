import 'package:flutter/material.dart';
import 'package:sincronia_web/views/pantalla_olvide_contrsena.dart';
import 'package:sincronia_web/widgets/button.dart';
import 'package:sincronia_web/widgets/button_2.dart';
import 'package:sincronia_web/widgets/text_field.dart';
import 'package:sincronia_web/widgets/text_field_clave.dart';

class PantallaInicioSesion extends StatelessWidget {
  const PantallaInicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  'assets/logo_SincronIA.png',
                  height: 250,
                ),
                const Text(
                  'SincronIA',
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF0D47A1),
                  ),
                ),
                const SizedBox(height: 40),

                const CustomTextField(
                  labelText: 'Correo Electrónico',
                  hintText: 'Escribe tu correo',
                  width: 800.0,
                ),
                const SizedBox(height: 20),
                
                const CustomPasswordField(
                  labelText: 'Contraseña',
                  hintText: 'Escribe tu contraseña',
                  width: 800.0,
                ),

                const SizedBox(height: 20),
                
                CustomButton(
                  text: 'INICIAR SESIÓN',
                  width: 400.0,
                  onPressed: () {
                  },
                  baseColor: const Color(0xFF1976D2),
                ),

                const SizedBox(height: 10),
                // Texto "o"
                const Text(
                  'o',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                const SizedBox(height: 10),
                CustomButton(
                  text: 'REGÍSTRATE',
                  width: 400.0,
                  onPressed: () {
                  },
                  baseColor: const Color(0xFF64B5F6),
                ),
                
                const SizedBox(height: 20),
                
                CustomButton2(
                  text: 'Olvidé mi contraseña', 
                  width: 400.0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PantallaOlvideContrasena()),
                    );
                },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
