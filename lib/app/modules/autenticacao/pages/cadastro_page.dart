import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/pages/template_page.dart';
import 'package:nivelamento_lumatec/core/widgets/button_widget.dart';
import 'package:nivelamento_lumatec/core/widgets/textfield_widget.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _keyForm = GlobalKey<FormState>();

  TextEditingController txtSenha = TextEditingController();
  TextEditingController txtRepitaSuaSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TemplateAutenticacaoPage(
        child: Column(
      children: [
        BootstrapRow(children: [
          BootstrapCol(
            child: Text(
              "Realize o seu cadastro",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ]),
        Form(
          key: _keyForm,
          child: Column(children: [
            BootstrapRow(children: [
              BootstrapCol(
                child: TextFieldLumatec(
                  hintText: "Nome",
                  validator: (String? valor) {
                    if (valor == "") {
                      return "Por favor preencha esse campo";
                    }
                  },
                ),
              ),
            ]),
            BootstrapRow(children: [
              BootstrapCol(
                child: TextFieldLumatec(
                  hintText: "Usuario",
                  validator: (String? valor) {
                    if (valor == "") {
                      return "Por favor preencha esse campo";
                    }
                  },
                ),
              ),
            ]),
            BootstrapRow(children: [
              BootstrapCol(
                child: TextFieldLumatec(
                  hintText: "Senha",
                  obscure: true,
                  controller: txtSenha,
                  validator: (String? valor) {
                    if (valor == "") {
                      return "Por favor preencha esse campo";
                    }
                  },
                ),
              ),
            ]),
            BootstrapRow(children: [
              BootstrapCol(
                child: TextFieldLumatec(
                  hintText: "Repita sua senha",
                  obscure: true,
                  controller: txtRepitaSuaSenha,
                  validator: (String? valor) {
                    if (valor == "") {
                      return "Por favor preencha esse campo";
                    }
                    if (txtSenha.text != txtRepitaSuaSenha.text) {
                      return "As senhas precisam ser iguais";
                    }
                  },
                ),
              ),
            ]),
            BootstrapRow(children: [
              BootstrapCol(
                child: ButtonLumatec(
                  label: "Cadastrar",
                  color: Color(0xFF3BC171),
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ]),
          ]),
        ),
        BootstrapRow(children: [
          BootstrapCol(
              child: ButtonLumatec(
            label: "Voltar",
            color: Color(0xFF448AFF),
            onPressed: () {
              Modular.to.pushNamed("/");
            },
          )),
        ]),
      ],
    ));
  }
}
