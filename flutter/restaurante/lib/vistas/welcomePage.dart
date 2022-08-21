import 'dart:html';


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/domicilio.dart';
import 'package:restaurante/vistas/signInPage.dart';
import 'package:restaurante/vistas/menupagina.dart';
import '../widgets/wcWidgets.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  double screenHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 238, 245),
      body: Center(
          child: Container(
        width: 200,
        height: screenHeight *
            0.9, //Acá se mira a que porcentaje ponerle con el * y el numero
        decoration: BoxDecoration(
          color: const Color(0xFC6998),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            titleText("BIENVENIDO"),
            //Spacer(flex: 1),
            subTitleText("_______________________"),
            Spacer(flex: 1),
            subTitleText("MIAMI MEET"),
            subTitleText1("BURGER GRILL"),
            subTitleText("_______________________"),
            Spacer(flex: 2),
            
            const Image(image: AssetImage("assets/burger.png")),
            Spacer(flex: 2),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignInPage();
                  },
                ),
              );
            }, Colors.transparent, "SIGN IN"),
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return domicilio();
                  },
                ),
              );
            }, Colors.transparent, "DOMICILIO"),
            
            Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return menupagina ();
                  },
                ),
              );
              
            }, Colors.transparent, "MENÚ"),
            Spacer(flex: 1),
          ],
        ),
      )),
    );
  }
}
