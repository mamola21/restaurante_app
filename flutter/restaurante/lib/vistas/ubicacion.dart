import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/menupagina2.dart';
import 'package:restaurante/vistas/ubicacion.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class ubicacion extends StatelessWidget {
  const ubicacion({Key? key}) : super(key: key);

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
              titleText("MIAMI MEET"),
              subTitleText2("UBICACIÓN"),
              Spacer(flex: 1),
              titleText("Sede poblado"),
              Image(image: AssetImage("assets/poblado.png")),
              Spacer(flex: 1),
              titleText("Sede San Bernardo"),
              Image(image: AssetImage("assets/belen.png")),
              Spacer(flex: 1),
              subTitleText1("Ir a Google maps"),
              Spacer(flex: 1),
              
              
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/poblado.png"));
  }
}
