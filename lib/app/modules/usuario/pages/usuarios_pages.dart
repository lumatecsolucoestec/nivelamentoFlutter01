import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:nivelamento_lumatec/core/widgets/button_widget.dart';
import 'package:nivelamento_lumatec/core/widgets/textfield_widget.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({Key? key}) : super(key: key);

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  List valorCheck = [];
  // final store = Modular.get<UsuarioStores>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BootstrapContainer(
        padding: const EdgeInsets.only(top: 70),
        children: [
          BootstrapRow(
            children: [
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Image.asset('assets/logo.png'),
              ),
              BootstrapCol(
                sizes: 'col-12 col-md-6',
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Cadastrar usuários do sistema",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    ),
                  ),
                ),
              ),
            ],
          ),
          BootstrapRow(
            children: [
              BootstrapCol(
                child: Text(
                  "Usuário do sistema",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
          ),
          Form(
            child: Column(children: [
              BootstrapRow(children: [
                BootstrapCol(
                  child: TextFieldLumatec(
                    hintText: "Nome",
                  ),
                ),
              ]),
              BootstrapRow(
                children: [
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-6 col-lg-6',
                    child: TextFieldLumatec(
                      hintText: "Email",
                      validator: (String? valor) {
                        if (valor == "") {
                          return "Por favor preencha esse campo";
                        }
                      },
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-6 col-lg-6',
                    child: TextFieldLumatec(
                      hintText: "Telefone/celular",
                      validator: (String? valor) {
                        if (valor == "") {
                          return "Por favor preencha esse campo";
                        }
                      },
                    ),
                  ),
                ],
              ),
              BootstrapRow(
                children: [
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-8 col-lg-8',
                    child: TextFieldLumatec(
                      hintText: "Rua",
                      validator: (String? valor) {
                        if (valor == "") {
                          return "Por favor preencha esse campo";
                        }
                      },
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-4 col-lg-4',
                    child: TextFieldLumatec(
                      hintText: "Número",
                      validator: (String? valor) {
                        if (valor == "") {
                          return "Por favor preencha esse campo";
                        }
                      },
                    ),
                  ),
                ],
              ),
              BootstrapRow(
                children: [
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-4 col-lg-4',
                    child: TextFieldLumatec(
                      hintText: "Estado",
                      validator: (String? valor) {
                        if (valor == "") {
                          return "Por favor preencha esse campo";
                        }
                      },
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-12 col-sm-12 col-md-8 col-lg-8',
                    child: TextFieldLumatec(
                      hintText: "Cidade",
                      validator: (String? valor) {
                        if (valor == "") {
                          return "Por favor preencha esse campo";
                        }
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: BootstrapRow(children: [
                  BootstrapCol(
                      sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                      child: Text("Tipo de usuário")),
                ]),
              ),
              BootstrapRow(children: [
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3',
                  child: CheckboxListTile(
                    title: const Text('Suporte'),
                    autofocus: false,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: valorCheck.contains(1),
                    onChanged: (bool? value) {
                      if (value == true) {
                        valorCheck.add(1);
                      } else {
                        valorCheck.remove(1);
                      }
                      setState(() {});
                    },
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3',
                  child: CheckboxListTile(
                    title: const Text('Revenda'),
                    autofocus: false,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: valorCheck.contains(2),
                    onChanged: (bool? value) {
                      if (value == true) {
                        valorCheck.add(2);
                      } else {
                        valorCheck.remove(2);
                      }
                      setState(() {});
                    },
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3',
                  child: CheckboxListTile(
                    title: const Text('Adminsitrador'),
                    autofocus: false,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: valorCheck.contains(3),
                    onChanged: (bool? value) {
                      if (value == true) {
                        valorCheck.add(3);
                      } else {
                        valorCheck.remove(3);
                      }
                      setState(() {});
                    },
                  ),
                ),
              ]),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: BootstrapRow(
                  children: [
                    BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                        child: Text("Tipo de usuário")),
                  ],
                ),
              ),
              BootstrapRow(children: [
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                  child: ButtonLumatec(
                    label: "Salvar",
                    color: Color(0xFF3BC171),
                    onPressed: () {
                      return null;
                    },
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                  child: ButtonLumatec(
                    label: "Editar",
                    color: Color(0xFFF59F2F),
                    onPressed: () {
                      return null;
                    },
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                  child: ButtonLumatec(
                    label: "Excluir",
                    color: Color(0xfff448AFF),
                    onPressed: () {
                      return null;
                    },
                  ),
                ),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
