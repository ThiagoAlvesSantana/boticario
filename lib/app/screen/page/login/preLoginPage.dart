import 'package:boticario/app/screen/component/appBarComponent.dart';
import 'package:boticario/app/screen/page/login/loginPage.dart';
import 'package:boticario/app/screen/page/login/registerLoginPage.dart';
import 'package:flutter/material.dart';

class PreLoginPage extends StatefulWidget {
  @override
  _PreLoginPageState createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarComponent(
        title: "",
        isBack: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
            child: Image.asset(
              "lib/assets/Grupo-boticario-logo.jpg",
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
          ),
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Entrar'),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterLoginPage()),
                );
              },
              child: Text('Cadastrar'),
            ),
          ),
        ],
      ),
    );
  }
}
