import 'package:flutter/material.dart';
import 'package:sincronia_web/views/pantalla_inicio_sesion.dart';
import 'package:sincronia_web/views/pantalla_principal.dart';
import 'package:sincronia_web/widgets/button.dart';
import 'package:sincronia_web/widgets/button_2.dart';
import 'package:sincronia_web/widgets/text_field.dart';
import 'package:sincronia_web/widgets/text_field_clave.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

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
                const SizedBox(height: 20),
                Image.asset(
                  'assets/logo_SincronIA.png',
                  height: 250,
                ),
                const Text(
                  'Registrarse',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF0D47A1),
                  ),
                ),
                const SizedBox(height: 20),

                // Campos de texto para el registro
                const CustomTextField(
                  labelText: 'Nombre',
                  hintText: 'Escribe tu nombre',
                  width: 800.0,
                ),
                const SizedBox(height: 10),

                const CustomTextField(
                  labelText: 'Apellido',
                  hintText: 'Escribe tu apellido',
                  width: 800.0,
                ),
                const SizedBox(height: 20),

                const CustomTextField(
                  labelText: 'Correo electrónico',
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

                // Botón de registro
                CustomButton(
                  text: 'REGISTRARSE',
                  width: 400.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PantallaPrincipal()),
                    );
                  },
                  baseColor: const Color(0xFF1976D2),
                ),

                const SizedBox(height: 20),

                // Botón de "Ya tengo una cuenta"
                CustomButton2(
                  text: 'YA TENGO UNA CUENTA',
                  width: 400.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PantallaInicioSesion()),
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
