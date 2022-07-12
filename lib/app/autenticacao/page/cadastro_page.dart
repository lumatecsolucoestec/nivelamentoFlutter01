import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/autenticacao/store/autenticacao_store.dart';
import 'package:nivelamento_lumatec/core/template/login_template.dart';
import 'package:nivelamento_lumatec/core/widget/button_widget.dart';
import 'package:nivelamento_lumatec/core/widget/textfield_widget.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  var _formKey = GlobalKey<FormState>();
 
 AutenticacaoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return TemplateLogin(
        body: Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Realize seu cadastro",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
        SizedBox(
          height: 7,
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                TextFieldLumatec(
                  label: "Nome",
                  controller: store.txtNome,
                  validator: (valor) {
                    if (valor == "") return "Por favor preencha o nome";
                  },
                ),
                TextFieldLumatec(
                  label: "Usuario",
                  controller: store.txtUsuario,
                  validator: (valor) {
                    if (valor == "") return "Por favor preencha o usuario";
                  },
                ),
                TextFieldLumatec(
                  label: "Senha",
                  obscure: true,
                  controller: store.txtSenha,
                  validator: (valor) {
                    if (valor == "") return "Por favor preencha a senha";
                  },
                ),
                TextFieldLumatec(
                  label: "Repita sua senha",
                  obscure: true,
                  controller: store.txtRepitaSenha,
                  validator: (valor) {
                    if (valor == "") return "Por favor preencha a senha";
                    if (store.txtRepitaSenha.text != store.txtSenha.text){
                      return "As duas senhas precisam ser iguais";
                    }
                  },
                ),
                ButtonLumatec(
                  label: "Cadastrar",
                  color: Color(0xFF3BC171),
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      store.cadastrar();
                    }
                  },
                ),
              ],
            )),
        ButtonLumatec(
          label: "Voltar",
          color: Color(0xFF448AFF),
          onPressed: () {
            Modular.to.pop();
          },
        ),
      ],
    ));
  }
}
