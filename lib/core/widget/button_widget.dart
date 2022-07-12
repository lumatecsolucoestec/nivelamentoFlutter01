// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonLumatec extends StatefulWidget {
  ButtonLumatec({
    Key? key,
    required this.label,
    this.onPressed,
    this.color
  }) : super(key: key);
  final String label;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  State<ButtonLumatec> createState() => _ButtonLumatecState();
}

class _ButtonLumatecState extends State<ButtonLumatec> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: widget.color,
              padding: EdgeInsets.only(top: 9, bottom: 9)
            ),
            onPressed: widget.onPressed,
            child: Text(widget.label, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),),
          ),
        ),
        SizedBox(height: 14,)
      ],
    );
  }
}
