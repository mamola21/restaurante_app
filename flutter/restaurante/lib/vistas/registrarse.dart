import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/cliente_creado.dart';
import 'package:restaurante/vistas/ordenar.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class registrarse extends StatelessWidget {
  const registrarse({Key? key}) : super(key: key);

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
              Image(image: AssetImage("assets/registro.png")),
              Spacer(flex: 1),
              subTitleText("REGISTRO DE USUARIO"),
              //SizedBox(height: 8),
              //subTitleText("MIAMI MEET"),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    hintText: "CC",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    hintText: "E-mail",
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
                    hintText: "Crea password",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return cliente_creado();
                  },
                ),
              );
            }, Colors.transparent, "CREAR USUARIO"),
              //largeButton(() {}, Color(0xFF41F2C0), "ORDENAR"),
              Spacer(),
              subTitleText("Tienes problemas para crear usuario?"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}