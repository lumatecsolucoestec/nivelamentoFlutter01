import 'package:flutter/material.dart';

class TextFieldLumatec extends StatefulWidget {
  TextFieldLumatec({Key? key, required this.label, this.obscure = false, this.validator, this.controller}) : super(key: key);
  final String label;
  final bool obscure;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  @override
  State<TextFieldLumatec> createState() => _TextFieldLumatecState();
}

class _TextFieldLumatecState extends State<TextFieldLumatec> {
  bool obscureInterno = false;

  @override
  void initState() {
    super.initState();
    obscureInterno = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: obscureInterno,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            labelStyle: TextStyle(color: Colors.black),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            label: Text(widget.label),
            suffixIcon: widget.obscure
                ? IconButton(
                    icon: obscureInterno ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    onPressed: () {
                      obscureInterno = !obscureInterno;
                      setState(() {});
                    },
                  )
                : null),
      ),
    );
  }
}
