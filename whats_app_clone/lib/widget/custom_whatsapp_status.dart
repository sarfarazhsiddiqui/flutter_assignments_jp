import 'package:flutter/material.dart';

Widget CustomWhatsappStatus(bgImage, titleText, subtitleText) {
  return ListTile(
    leading: Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.green,
            width: 3,
          )),
      child: CircleAvatar(backgroundImage: AssetImage(bgImage)),
    ),
    title: Text(
      '$titleText',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text('$subtitleText'),
  );
}
