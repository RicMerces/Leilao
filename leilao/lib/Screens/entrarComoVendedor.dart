import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EntrarComoVendedor extends StatefulWidget {
  const EntrarComoVendedor({Key? key}) : super(key: key);

  @override
  _EntrarComoVendedorState createState() => _EntrarComoVendedorState();
}

class _EntrarComoVendedorState extends State<EntrarComoVendedor> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5418F0),
          title: Text('Login vendedor'),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              children: [
                Image.asset(
                  'assets/imgs/business.png',
                  height: 200,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Digite seu E-mail'),
                  onFieldSubmitted: (var x) {
                    print("Email : $x");
                  },
                  controller: _textEditingController,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Digite sua senha'),
                  onFieldSubmitted: (var x) {
                    print("Senha : $x");
                  },
                  controller: _textEditingController2,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: TextButton(
                    onPressed: () {
                      print('valor = ' +
                          _textEditingController.text +
                          ' ${_textEditingController2.text}');
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff5418F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(300, 50),
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
