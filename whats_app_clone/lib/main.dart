import 'package:flutter/material.dart';
import 'package:whats_app_clone/call_view.dart';
import 'package:whats_app_clone/chat_view.dart';
import 'package:whats_app_clone/status_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats App Clone',
      debugShowCheckedModeBanner: false,
      initialRoute: 'chat',
      routes: {
        'chat': (context) => ChatView(),
        'call': (context) => CallView(),
        'status': (context) => StatusView()
      },
      //home: ChatView(), // for chat
      //home: CallView(),
      //home: StatusView(),
    );
  }
}
