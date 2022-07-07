import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/pages/template_page.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/store/autenticacao_store.dart';
import 'package:nivelamento_lumatec/core/widgets/button_widget.dart';
import 'package:nivelamento_lumatec/core/widgets/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();

  AutenticacaoStore store = Modular.get();

  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtSenha = TextEditingController();
  @override
  void initState() {
    super.initState();
    store.verficarLogin();
  }

  @override
  Widget build(BuildContext context) {
    return TemplateAutenticacaoPage(
      child: Column(children: [
        BootstrapRow(children: [
          BootstrapCol(
            child: Center(
              child: Text(
                "Como é bom te ver de novo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
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
                  controller: txtUsuario,
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
                  controller: txtSenha,
                  hintText: "Senha",
                  obscure: true,
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
                child: ButtonLumatec(
                  label: "Login",
                  color: Color(0xFF3BC171),
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                      store.login(txtUsuario.text, txtSenha.text);
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
          BootstrapCol(child: Observer(
            builder: (context) {
              return store.logado
                  ? Column(
                    children: [
                      ButtonLumatec(
                          label: "Editar Perfil",
                          color: Color(0xFF448AFF),
                          onPressed: () {
                            Modular.to.pushNamed("cadastro");
                          },
                        ),

                         ButtonLumatec(
                          label: "Cadastrar Novo usuario",
                          color: Color.fromARGB(255, 49, 1, 68),
                          onPressed: () {
                            Modular.to.pushNamed("cadastro");
                          },
                        ),

                         ButtonLumatec(
                          label: "Sair",
                          color: Colors.red,
                          onPressed: () {
                           store.sair();
                          },
                        ),
                    ],
                  )
                  : ButtonLumatec(
                      label: "Cadastrar",
                      color: Color(0xFF448AFF),
                      onPressed: () {
                        Modular.to.pushNamed("cadastro");
                      },
                    );
            },
          )),
        ]),
      ]),
    );
  }
}
