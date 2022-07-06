import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: Text("Deu Certo")),
        ElevatedButton(
            onPressed: () {
              Modular.to.pushNamed("/rotateste");
            },
            child: Text("Mudar de Rota"))
      ],
    );
  }
}
