import 'package:flutter/material.dart';

Widget CustomWhatsappChat(
    bgImage, subtitleIcon, titleText, subtitleText, newTime) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(bgImage)),
    title: Text(
      '$titleText',
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
    subtitle: Row(
      children: [
        Icon(subtitleIcon),
        Text('$subtitleText'),
      ],
    ),
    trailing: Text(newTime),
  );
}
