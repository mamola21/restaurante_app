import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/pedir_domicilio.dart';
import 'package:restaurante/vistas/sedes.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class domicilio extends StatelessWidget {
  const domicilio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 238, 245),
      body: Center(
        child: Container(
          width: 190,
          height: 625,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 238, 245),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
            subTitleText("_______________________"),
            Spacer(flex:1),
            titleText("DOMICILIO"),
            subTitleText("_______________________"),
            subTitleText2("MIAMI MEET"),
            subTitleText2("BURGER GRILL"),
              largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return sedes();
                  },
                ),
              );
            }, Colors.transparent, "SEDES"),
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
            }, Colors.transparent, "PEDIR DOMICILIO"),
            Spacer(flex: 1),
            Image(image: AssetImage("assets/domicilios.png")),
            ],
          ),
        ),
      ),
    );
  }
}

