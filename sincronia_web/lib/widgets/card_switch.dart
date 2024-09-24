import 'package:flutter/material.dart';

class CardSwitch extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final bool switchValue;
  final ValueChanged<bool> onChanged;

  const CardSwitch({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.switchValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360, // Ancho de la card
      constraints: const BoxConstraints(
        maxHeight: 60,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFE0F7FA),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0D47A1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: const Color(0xFFFFE082), size: 20),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Switch(
              value: switchValue,
              onChanged: onChanged,
              activeColor: const Color(0xFF4DB6AC),
            ),
          ],
        ),
      ),
    );
  }
}
