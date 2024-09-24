import 'package:flutter/material.dart';
import 'package:sincronia_web/widgets/card_switch.dart';
import 'package:sincronia_web/widgets/button.dart';

class PantallaPersonalizacion extends StatefulWidget {
  const PantallaPersonalizacion({Key? key}) : super(key: key);

  @override
  _PantallaPersonalizacionState createState() =>
      _PantallaPersonalizacionState();
}

class _PantallaPersonalizacionState extends State<PantallaPersonalizacion> {
  // Variables para manejar el estado de los switches
  bool _alarmasSwitch = true;
  bool _calendarioSwitch = true;
  bool _habitosSwitch = true;
  bool _recomendacionesSwitch = true;
  bool _suenoSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/fondo_persApp.png',
              height: 500,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Personalización de la App Móvil',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Selecciona las secciones que deseas mostrar en tu aplicación móvil',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      width: 900,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 4.5,
                        children: [
                          CardSwitch(
                            title: 'Alarmas',
                            description:
                                'Activar/desactivar la visualización de alarmas',
                            icon: Icons.access_alarm,
                            switchValue: _alarmasSwitch,
                            onChanged: (value) {
                              setState(() {
                                _alarmasSwitch = value;
                              });
                            },
                          ),
                          CardSwitch(
                            title: 'Calendario',
                            description: 'Activar o desactivar el calendario',
                            icon: Icons.calendar_today,
                            switchValue: _calendarioSwitch,
                            onChanged: (value) {
                              setState(() {
                                _calendarioSwitch = value;
                              });
                            },
                          ),
                          CardSwitch(
                            title: 'Hábitos',
                            description:
                                'Permite activar o desactivar la sección de hábitos',
                            icon: Icons.self_improvement,
                            switchValue: _habitosSwitch,
                            onChanged: (value) {
                              setState(() {
                                _habitosSwitch = value;
                              });
                            },
                          ),
                          CardSwitch(
                            title: 'Recomendaciones',
                            description: 'Ofrece sugerencias personalizadas.',
                            icon: Icons.star,
                            switchValue: _recomendacionesSwitch,
                            onChanged: (value) {
                              setState(() {
                                _recomendacionesSwitch = value;
                              });
                            },
                          ),
                          CardSwitch(
                            title: 'Sueño',
                            description:
                                'Activar o desactivar el seguimiento de sueño',
                            icon: Icons.bedtime,
                            switchValue: _suenoSwitch,
                            onChanged: (value) {
                              setState(() {
                                _suenoSwitch = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: 'REGRESAR',
                        width: 200.0,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        baseColor: const Color(0xFF1976D2),
                      ),
                      const SizedBox(width: 20),
                      CustomButton(
                        text: 'GUARDAR CAMBIOS',
                        width: 200.0,
                        onPressed: () {},
                        baseColor: const Color(0xFF1976D2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
