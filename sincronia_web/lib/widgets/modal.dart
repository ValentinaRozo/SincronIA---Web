import 'package:flutter/material.dart';

class CustomModal extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressed;

  const CustomModal({
    Key? key,
    required this.title,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: const Color(0xFFE3F2FD),
      content: SizedBox(
        width: size.width * 0.3,
        child: Column(  
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.notifications,
              size: 50,
              color: Color(0xFF0D47A1),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1976D2),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF0D47A1),
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: onPressed,
                child: const Text(
                  'CONTINUAR',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
