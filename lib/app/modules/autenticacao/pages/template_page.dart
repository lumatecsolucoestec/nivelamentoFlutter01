import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class TemplateAutenticacaoPage extends StatelessWidget {
  const TemplateAutenticacaoPage({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFCF3138),
        image: DecorationImage(
          image: AssetImage("assets/fundo_aplicacao.jpg"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BootstrapContainer(children: [
          Container(
            height: 75,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  BootstrapRow(children: [
                    BootstrapCol(
                      child: Image.asset('assets/logo.png'),
                    ),
                  ]),
                  this.child,
                  Container(
                    height: 100,
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
