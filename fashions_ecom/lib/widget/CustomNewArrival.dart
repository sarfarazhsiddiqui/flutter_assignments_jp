import 'package:flutter/material.dart';

Widget CustomNewArrival(
  String imagePath, // image ka path (asset image)
  String title, // product ka naam
  String subtitle, // brand ya chhoti detail
  String price, // product ki price
) {
  return Column(
    children: [
      Container(
        height: 160,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), //Image corners round
          child: Align(
            alignment: Alignment.topCenter, // Top part show karega
            heightFactor: 0.75, //Neeche se cut karega (adjust this value)
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 160,
              width: 180,
            ),
          ),
        ),
      ),
      SizedBox(height: 15),
      Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
      Text(subtitle,style: TextStyle(color: Colors.grey[600],),),
      Text(price,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      
    ],
  );
}
