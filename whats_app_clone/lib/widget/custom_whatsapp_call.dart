import 'package:flutter/material.dart';

Widget CustomWhatsappCall(
    bgImage, subtitleIcon, titleText, subtitleText, callColor) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(bgImage)),
    title: Text(
      '$titleText',
      style: TextStyle(color: callColor),
    ),
    subtitle: Row(
      children: [
        Icon(subtitleIcon, color: callColor),
        Text('$subtitleText'),
      ],
    ),
    trailing: Icon(Icons.call),
  );
}
