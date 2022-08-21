import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class cliente_creado extends StatelessWidget {
  const cliente_creado({Key? key}) : super(key: key);

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
              Spacer(flex: 1),
              titleText("MIAMI MEET"),
              subTitleText("BURGER GRILL"),
              //Spacer(flex: 1),
              Image(image: AssetImage("assets/creado.png")),
              Spacer(flex: 1),
              titleText("CARGANDO..."),
              SizedBox(height: 8),
              subTitleText("USUARIO CREADO"),
              subTitleText("CON ÉXITO"),
             
            ],
          ),
        ),
      ),
    );
  }
}
