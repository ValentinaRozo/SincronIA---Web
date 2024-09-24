import 'package:flutter/material.dart';
import 'package:sincronia_web/views/pantalla_inicio_sesion.dart';
import 'package:sincronia_web/widgets/button.dart';
import 'package:sincronia_web/widgets/modal.dart';
import 'package:sincronia_web/widgets/text_field_clave.dart';

class PantallaCambiarContrasena extends StatelessWidget {
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
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/fondo_2.png',
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
                    const SizedBox(height: 50),
                    Image.asset(
                      'assets/logo_SincronIA.png',
                      height: 150,
                    ),
                    const SizedBox(height: 20),

                    //Titulo
                    const Text(
                      'Cambiar contraseña',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D47A1),
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 10),

                    //instrucciones
                    const Text(
                      'Ingresa tu contraseña actual y tu nueva contraseña',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF1976D2),
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Campos
                    const CustomPasswordField(
                      labelText: 'Contraseña Actual',
                      hintText: 'Escribe tu contraseña actual',
                      width: 800.0,
                    ),
                    const SizedBox(height: 20),

                    const CustomPasswordField(
                      labelText: 'Nueva Contraseña',
                      hintText: 'Escribe la contraseña nueva',
                      width: 800.0,
                    ),
                    const SizedBox(height: 20),

                    const CustomPasswordField(
                      labelText: 'Confirma la Contraseña',
                      hintText: 'Repite la nueva contraseña',
                      width: 800.0,
                    ),
                    const SizedBox(height: 40),

                    CustomButton(
                      text: 'CAMBIAR CONTRASEÑA',
                      width: 400.0,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomModal(
                              title: 'Contraseña Actualizada',
                              description:
                                  '¡Listo, ya cambiaste tu contraseña!',
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PantallaInicioSesion(),
                                  ),
                                );
                              },
                            );
                          },
                        );
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
