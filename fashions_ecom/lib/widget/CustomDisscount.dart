import 'package:flutter/material.dart';

// Disscount Widget
Widget DiscountWidget(String bgImage) {
  return Padding(
    padding: const EdgeInsets.only(top: 18,bottom: 18),
    child: Container(
      height: 220,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50), //Image corners round
        child: Align(
          alignment: Alignment.topCenter, // Top part show karega
          heightFactor: 0.75, //Neeche se cut karega (adjust this value)
          child: Image.asset(
            bgImage,
            fit: BoxFit.cover,
            height: 220,
            width: double.infinity,
          ),
        ),
      ),
    ),
  );
}

//====================================================================
