import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonLumatec extends StatelessWidget {
  const ButtonLumatec(
      {Key? key, required this.label, this.color = Colors.blue, this.onPressed})
      : super(key: key);
  final String label;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: this.color),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              this.label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
