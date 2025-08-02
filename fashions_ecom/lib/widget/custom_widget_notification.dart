import 'package:flutter/material.dart';

Widget CustomProductsView() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(
          'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg'),
    ),
    title: Text(
      'Polo Shirt',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
    ),
    subtitle: Text(
      'Polo a best shirt in town',
      style: TextStyle(fontSize: 20.0),
    ),
  );
}
