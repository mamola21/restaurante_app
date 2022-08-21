import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/menupagina2.dart';
import 'package:restaurante/vistas/pedir_domicilio.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class ingresar_cliente extends StatelessWidget {
  const ingresar_cliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 238, 245),
      body: Center(
        child: Container(
          width: 300,
          height: 620,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 238, 245),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(),
              subTitleText1("POR SER NUESTRO CLIENTE TIENES ESTA CUPONERA PARA QUE LA REDIMAS EN TUS PRÓXIMAS COMPRAS"),
              Spacer(),
              subTitleText("Válido hasta 30 de agosto 2022"),
              Spacer(),
              Image(image: AssetImage("assets/cupones.png")),
              Spacer(flex: 1),
                 largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return pedir_domicilio();
                  },
                ),
              );
            }, Colors.transparent, "ORDENAR"),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
