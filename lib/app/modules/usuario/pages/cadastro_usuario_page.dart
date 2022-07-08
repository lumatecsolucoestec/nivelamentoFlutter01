import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nivelamento_lumatec/app/modules/usuario/store/usuario_store.dart';
import 'package:nivelamento_lumatec/core/widgets/button_widget.dart';
import 'package:nivelamento_lumatec/core/widgets/textfield_widget.dart';

class CadastroUsuario extends StatelessWidget {
  CadastroUsuario({Key? key}) : super(key: key);
  final store = Modular.get<UsuarioStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BootstrapRow(
                children: [
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                    child: Image.asset('assets/logo.png'),
                  ),
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                    child: Text(
                      'Cadastrar usuários do sistema',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              TextFieldLumatec(
                hintText: 'Nome',
                controller: store.nome,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFieldLumatec(
                      hintText: 'E-mail',
                      controller: store.email,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextFieldLumatec(
                      hintText: 'Telefone / Celular',
                      controller: store.telefone,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: TextFieldLumatec(
                      hintText: 'Rua',
                      controller: store.rua,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: TextFieldLumatec(
                      hintText: 'Número',
                      controller: store.numero,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: TextFieldLumatec(
                      hintText: 'Estado',
                      controller: store.estado,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 3,
                    child: TextFieldLumatec(
                      hintText: 'Cidade',
                      controller: store.cidade,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Tipo de Usuário',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff565656),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Observer(
                        builder: (_) {
                          return Checkbox(
                            value: store.suporte,
                            onChanged: (value) {
                              store.suporte = value;
                            },
                          );
                        },
                      ),
                      Text('Suporte'),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Observer(
                        builder: (_) {
                          return Checkbox(
                            value: store.revenda,
                            onChanged: (value) {
                              store.revenda = value;
                            },
                          );
                        },
                      ),
                      Text('Revenda'),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Observer(
                        builder: (_) {
                          return Checkbox(
                            value: store.administrador,
                            onChanged: (value) {
                              store.administrador = value;
                            },
                          );
                        },
                      ),
                      Text('Administrador'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Status do Usuário',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff565656),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Observer(builder: (_) {
                        return Radio(
                          value: 1,
                          groupValue: store.radioValue,
                          onChanged: (value) {
                            store.radioValue = value;
                          },
                        );
                      }),
                      Text('Ativo'),
                    ],
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Row(
                    children: [
                      Observer(builder: (_) {
                        return Radio(
                          value: 2,
                          groupValue: store.radioValue,
                          onChanged: (value) {
                            store.radioValue = value;
                          },
                        );
                      }),
                      Text('Bloqueado'),
                    ],
                  ),
                ],
              ),
              Text(
                'Dados para acesso',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff565656),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFieldLumatec(
                      hintText: 'Usuário',
                      controller: store.usuario,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFieldLumatec(
                      hintText: 'Senha',
                      controller: store.senha,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: ButtonLumatec(
                      label: 'Salvar',
                      color: Color(0xff3bc171),
                      onPressed: () {
                        store.cadastroCompleto();
                        Modular.to.pushNamed('lista_usuarios');
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: ButtonLumatec(
                      label: 'Limpar Tudo',
                      color: Color(0xfff59f2f),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: ButtonLumatec(
                      label: 'Voltar',
                      color: Color(0xff448aff),
                      onPressed: () {
                        Modular.to.pop();
                      },
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: const SizedBox(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
