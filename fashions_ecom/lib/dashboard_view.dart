import 'package:fashions_ecom/widget/custom_widget_productsview.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List chats = [
    {
      'color': Colors.red,
      'name': 'Ahmed',
      'msg': 'Hellloooo',
    },
    {
      'color': Colors.red,
      'name': 'Owais',
      'msg': 'Hellloooo',
    },
    {
      'color': Colors.red,
      'name': 'Abdullah',
      'msg': 'Hellloooo',
    },
    {
      'color': Colors.red,
      'name': 'Ali',
      'msg': 'Hellloooo',
    },
    {
      'color': Colors.red,
      'name': 'Shahzeb',
      'msg': 'Hellloooo',
    },
    {
      'color': Colors.red,
      'name': 'Bilal',
      'msg': 'Hellloooo',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: chats.length,
          itemBuilder: (context, i) {
//CustomProductsView(img, titl, subtitl, trail, context) {
            return CustomProductsView(Colors.yellow, "${chats[i]['name']}",
                "${chats[i]['mg']}", "${chats[i]['mg']}", context);
          }),
    );
  }
}
