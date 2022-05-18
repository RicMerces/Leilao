import 'package:flutter/material.dart';
import 'package:leilao/Screens/registrar.dart';

class LeilaoInicial extends StatefulWidget {
  @override
  _LeilaoInicialState createState() => _LeilaoInicialState();
}

class _LeilaoInicialState extends State<LeilaoInicial> {
  void _openRegister() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Registrar())));
  }

  void _openLoginComprador() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Registrar())));
  }

  void _openLoginVendedor() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => Registrar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDEE6FF),
      appBar: AppBar(
        backgroundColor: Color(0xff2252E3),
        title: const Text(
          'Bem vindo ao Leilao !',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Image.asset('assets/imgs/loginScreenImg.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Selecione o tipo de Login',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como comprador',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 195, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fixedSize: Size(300, 40)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como vendedor',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff5418F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(300, 40),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Não tem uma conta ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: _openRegister,
                  child: Text('Registrar'),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
