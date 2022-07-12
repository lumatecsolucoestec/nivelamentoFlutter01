import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/core/template/login_template.dart';
import 'package:nivelamento_lumatec/core/widget/button_widget.dart';
import 'package:nivelamento_lumatec/core/widget/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return TemplateLogin(
        body: Column(
      children: [
        Text(
          "Como é bom te ver de novo!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Form(
          key: _formKey,
            child: Column(children: [
          TextFieldLumatec(
            label: "Usuario",
            validator: (valor){
              if(valor == "")
                return "Por favor preencha o usuario";
            },
          ),
          TextFieldLumatec(
            label: "Senha",
            obscure: true,
             validator: (valor){
              if(valor == "")
                return "Por favor preencha a senha";
            },
          ),
          ButtonLumatec(
            label: "Entrar",
            onPressed: () {
              if(_formKey.currentState!.validate()){

              }

            },
            color: Color(0xFF3BC171),
          ),
          ButtonLumatec(
            label: "Cadastrar",
            onPressed: () {
              Modular.to.pushNamed("/cadastrar");
            },
            color: Color(0xFF448AFF),
          ),
        ]))
      ],
    ));
  }
}
