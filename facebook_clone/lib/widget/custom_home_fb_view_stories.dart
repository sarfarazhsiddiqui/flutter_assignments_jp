import 'package:flutter/material.dart';

Widget CustomStories(bgImage, subtitleIcon, titleText, subtitleText, newTime) {
  return ListTile(
    leading: CircleAvatar(radius: 15, backgroundImage: NetworkImage(bgImage)),
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
