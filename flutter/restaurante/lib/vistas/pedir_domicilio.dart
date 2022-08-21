import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/ordenar.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class pedir_domicilio extends StatelessWidget {
  const pedir_domicilio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 238, 245),
      body: Center(
        child: Container(
          width: 280,
          height: 620,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 238, 245),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image(image: AssetImage("assets/carrito.png")),
              Spacer(flex: 1),
              subTitleText("ORDENAR DOMICILIO"),
              SizedBox(height: 8),
              subTitleText("¿Cuál es tu antojo el día de hoy?"),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Dirección",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Descripción del pedido",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ordenar();
                  },
                ),
              );
            }, Colors.transparent, "ORDENAR"),
              //largeButton(() {}, Color(0xFF41F2C0), "ORDENAR"),
              Spacer(),
              subTitleText("Tienes problemas para realizar tu orden?"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
