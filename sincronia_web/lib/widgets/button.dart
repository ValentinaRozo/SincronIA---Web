import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;
  final Color baseColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.onPressed,
    required this.baseColor,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late Color _buttonColor;

  @override
  void initState() {
    super.initState();
    _buttonColor = widget.baseColor;
  }

  void _onTapDown() {
    setState(() {
      _buttonColor = widget.baseColor.withOpacity(0.4);
    });
  }

  void _onTapUp() {
    setState(() {
      _buttonColor = widget.baseColor;
    });
  }

  void _onHoverEnter() {
    setState(() {
      _buttonColor = widget.baseColor.withOpacity(0.7);
    });
  }

  void _onHoverExit() {
    setState(() {
      _buttonColor = widget.baseColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHoverEnter(),
      onExit: (event) => _onHoverExit(),
      child: GestureDetector(
        onTapDown: (details) => _onTapDown(),
        onTapUp: (details) => _onTapUp(),
        onTapCancel: () => _onTapUp(),
        child: SizedBox(
          width: widget.width,
          child: ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: _buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20.0),
            ),
            child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
