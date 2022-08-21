import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/welcomePage.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class menupagina2 extends StatelessWidget {
  const menupagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 238, 245),
      body: Center(
        child: Container(
          width: 365,
          height: 620,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 238, 245),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("assets/menu1.png")),
              Spacer(flex: 1),
              largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            }, Colors.transparent, "DEVOLVER"),
              
            ],
          ),
        ),
      ),
    );
  }
}

