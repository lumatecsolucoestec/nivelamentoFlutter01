import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/pages/template_page.dart';
import 'package:nivelamento_lumatec/app/modules/autenticacao/store/autenticacao_store.dart';
import 'package:nivelamento_lumatec/core/widgets/button_widget.dart';
import 'package:nivelamento_lumatec/core/widgets/textfield_widget.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _keyForm = GlobalKey<FormState>();

  AutenticacaoStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.buildContext = context;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      store.formulario();
    });
  }

  @override
  Widget build(BuildContext context) {
    return TemplateAutenticacaoPage(
        child: Column(
      children: [
        BootstrapRow(children: [
          BootstrapCol(
            child: Observer(builder: (_) {
              return Text(
                store.logado ? "Edite seu perfil" : "Realize o seu cadastro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              );
            }),
          ),
        ]),
        Form(
          key: _keyForm,
          child: Column(children: [
            BootstrapRow(children: [
              BootstrapCol(
                child: TextFieldLumatec(
                  controller: store.txtNome,
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
                  controller: store.txtUsuario,
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
                  controller: store.txtSenha,
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
                  controller: store.txtRepitaSuaSenha,
                  validator: (String? valor) {
                    if (valor == "") {
                      return "Por favor preencha esse campo";
                    }
                    if (store.txtSenha.text != store.txtRepitaSuaSenha.text) {
                      return "As senhas precisam ser iguais";
                    }
                  },
                ),
              ),
            ]),
            BootstrapRow(children: [
              BootstrapCol(
                child: Observer(builder: (_) {
                  return ButtonLumatec(
                    label: store.logado ? "Editar" : "Cadastrar",
                    color: Color(0xFF3BC171),
                    onPressed: () {
                      if (_keyForm.currentState!.validate()) {
                        store.cadastro();
                      } else {}
                    },
                  );
                }),
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
