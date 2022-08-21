
import 'package:flutter/material.dart';

GestureDetector largeButton(param0, Color transparent, String s) {
  return GestureDetector(
    onTap: param0,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(s)),
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 35,
      color: Color.fromARGB(255, 93, 79, 79),
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
        //Acá le pongo todo lo que necesito del texto, tambien puede ser el color y eso
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 93, 79, 79)),
    textAlign: TextAlign.center,
  );
}

Text subTitleText1(String text) {
  return Text(
    text,
    style: const TextStyle(
        //Acá le pongo todo lo que necesito del texto, tambien puede ser el color y eso
        fontSize: 10,
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 93, 79, 79)),
    textAlign: TextAlign.center,
  );
}

Text subTitleText2(String text) {
  return Text(
    text,
    style: const TextStyle(
        //Acá le pongo todo lo que necesito del texto, tambien puede ser el color y eso
        fontSize: 24,
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 201, 134, 52)),
    textAlign: TextAlign.center,
  );
}