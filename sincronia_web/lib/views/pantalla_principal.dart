import 'package:flutter/material.dart';
import 'package:sincronia_web/views/pantalla_inicio_sesion.dart';
import 'package:sincronia_web/views/pantalla_personalizacion.dart';
import 'package:sincronia_web/widgets/checkbox.dart';
import 'package:sincronia_web/widgets/button.dart';
import 'package:sincronia_web/widgets/card.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¡Bienvenido, Juan Perez!',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Administra y personaliza tu aplicación móvil desde aquí',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF0D47A1),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: CustomButton(
                    text: 'VER MIS ESTADÍSTICAS →',
                    width: 230.0,
                    onPressed: () {},
                    baseColor: const Color(0xFF1976D2),
                  ),
                ),
                const SizedBox(height: 30),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 3.5,
                  children: [
                    // Card de Personalización de la App Móvil
                    CustomCard(
                      title: 'Personalización de la App Móvil',
                      description:
                          'Lista de funcionalidades disponibles para activar/desactivar (Alarmas, Calendario, Hábitos, Recomendaciones).',
                      button: CustomButton(
                        text: 'Editar Personalización',
                        width: 200.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PantallaPersonalizacion()),
                          );
                        },
                        baseColor: const Color(0xFF1976D2),
                      ),
                      icon: Icons.edit,
                    ),

                    // Card de Gestión de Calendarios
                    CustomCard(
                      title: 'Gestión de Calendarios',
                      description:
                          'Lista de calendarios actualmente conectados (Google Calendar, Outlook, etc.).\n\nGoogle Calendar - 5 eventos activos',
                      button: CustomButton(
                        text: 'Gestionar Calendarios',
                        width: 200.0,
                        onPressed: () {},
                        baseColor: const Color(0xFF1976D2),
                      ),
                      icon: Icons.calendar_today,
                    ),

                    // Card de Configuración de Notificaciones
                    CustomCard(
                      title: 'Configuración de Notificaciones',
                      description:
                          'Configura cómo recibirás las notificaciones en tu App Móvil.',
                      button: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCheckbox(
                            label: 'Notificaciones por voz',
                            initialValue: true,
                            onChanged: (value) {},
                          ),
                          CustomCheckbox(
                            label: 'Notificaciones visuales',
                            initialValue: true,
                            onChanged: (value) {},
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CustomButton(
                              text: 'Guardar Cambios',
                              width: 200.0,
                              onPressed: () {},
                              baseColor: const Color(0xFF1976D2),
                            ),
                          ),
                        ],
                      ),
                      icon: Icons.notifications,
                    ),

                    // Card de Ajustes de Cuenta
                    CustomCard(
                      title: 'Ajustes de Cuenta',
                      description:
                          'Información de la cuenta\n\Nombre: Juan Perez\nCorreo electrónico: juanperez@ejemplo.com',
                      button: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            text: 'Cambiar Contraseña',
                            width: 150.0,
                            onPressed: () {},
                            baseColor: const Color(0xFF1976D2),
                          ),
                          const SizedBox(width: 8),
                          CustomButton(
                            text: 'Editar Información',
                            width: 150.0,
                            onPressed: () {},
                            baseColor: const Color(0xFF64B5F6),
                          ),
                          const SizedBox(width: 8),
                          CustomButton(
                            text: 'Cerrar Sesión',
                            width: 150.0,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PantallaInicioSesion()),
                              );
                            },
                            baseColor: const Color(0xFFD32F2F),
                          ),
                        ],
                      ),
                      icon: Icons.settings,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
