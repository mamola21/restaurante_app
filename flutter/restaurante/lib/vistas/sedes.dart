import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/menupagina2.dart';
import 'package:restaurante/vistas/ubicacion.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class sedes extends StatelessWidget {
  const sedes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 238, 245),
      body: Center(
        child: Container(
          width: 250,
          height: 620,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 238, 245),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(flex: 1),
              Image(image: AssetImage("assets/sedes.png")),
              Spacer(),
                 largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ubicacion();
                  },
                ),
              );
            }, Colors.transparent, "UBICACIÓN"),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
