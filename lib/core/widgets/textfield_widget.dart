import 'package:flutter/material.dart';

class TextFieldLumatec extends StatefulWidget {
  const TextFieldLumatec(
      {Key? key,
      required this.hintText,
      this.obscure = false,
      this.validator,
      this.controller})
      : super(key: key);

  final String hintText;
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

  OutlineInputBorder bordaNormal = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 1,
    ),
  );
  OutlineInputBorder bordaComErro = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureInterno,
        decoration: InputDecoration(
          suffixIcon: widget.obscure
              ? IconButton(
                  icon: Icon(
                      color: Colors.black,
                      obscureInterno ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    obscureInterno = !obscureInterno;
                    setState(() {});
                  },
                )
              : null,
          hintText: this.widget.hintText,
          focusedBorder: bordaNormal,
          focusedErrorBorder: bordaComErro,
          errorBorder: bordaComErro,
          enabledBorder: bordaNormal,
        ),
        validator: widget.validator,
      ),
    );
  }
}
