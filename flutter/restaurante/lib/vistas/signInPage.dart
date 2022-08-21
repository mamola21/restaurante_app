
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/ingresar_cliente.dart';
import 'package:restaurante/vistas/registrarse.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
              Image(image: AssetImage("assets/domicilio.png")),
              Spacer(flex: 1),
              subTitleText("INGRESA TUS DATOS"),
              SizedBox(height: 8),
              subTitleText("¿Eres cliente?"),
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
              Spacer(),
               largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ingresar_cliente();
                  },
                ),
              );
            }, Colors.transparent, "Sign In"),
              
              Spacer(),
              largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return registrarse();
                  },
                ),
              );
            }, Colors.transparent, "Registrate"),
              subTitleText("Olvidaste tu contraseña?"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
