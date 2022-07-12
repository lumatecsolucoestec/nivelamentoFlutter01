// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TemplateLogin extends StatefulWidget {
  TemplateLogin({
    Key? key,
    required this.body,
  }) : super(key: key);
  final Widget body;

  @override
  State<TemplateLogin> createState() => TemplateLoginState();
}

class TemplateLoginState extends State<TemplateLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFCF3138),
        image: DecorationImage(
          image: AssetImage("assets/image/login.jpg"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: 408,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                spreadRadius: 2,
                blurRadius: 9,
                offset: Offset(0, 2),
              ),
            ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Wrap(children: [
                Center(child: Image.asset("assets/image/logo.png")),
                SizedBox(
                  height: 16,
                ),
                widget.body
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
