import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registrar extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2252E3),
          title: Text('Criando nova conta'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 30),
                  child: Text(
                    'Antes de tudo, seja muito bem vindo(a) ao App "Leilão" ! Informe seus dados para registrarmos seu usuario.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration:
                      InputDecoration(labelText: 'Digite seu nome e sobrenome'),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Digite seu e-mail'),
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: 'Digite sua senha'),
                  obscureText: true,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: 'Confirmar senha'),
                  obscureText: true,
                  // style: ,
                ),
                RadioListTile(
                    title: Text('Comprador'),
                    value: 'comprador',
                    groupValue: _escolhaUsuario,
                    onChanged: (String? escolha) {
                      setState(() {
                        _escolhaUsuario = escolha;
                      });
                    }),
                RadioListTile(
                    title: Text('Vendedor'),
                    value: 'vendedor',
                    groupValue: _escolhaUsuario,
                    onChanged: (String? escolha) {
                      setState(() {
                        _escolhaUsuario = escolha;
                      });
                    }),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Registrar',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff2355EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(30),
                      ),
                      fixedSize: Size(300, 40),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
