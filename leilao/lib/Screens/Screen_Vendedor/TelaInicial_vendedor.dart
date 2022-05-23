import 'dart:io';

import 'package:flutter/material.dart';

class TelaInicialVendedor extends StatefulWidget {
  const TelaInicialVendedor({Key? key}) : super(key: key);

  @override
  _TelaInicialVendedorState createState() => _TelaInicialVendedorState();
}

class _TelaInicialVendedorState extends State<TelaInicialVendedor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá vendedor !'),
        backgroundColor: Color(0xff5418F0),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Text(
                'Nessa tela você podera adicionar, editar e deletar produtos do leilão',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
