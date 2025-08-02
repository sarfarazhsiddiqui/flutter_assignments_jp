import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List notify_list = [
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Ahmed',
      'notifMsg': 'Hellloooo i amd testing',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Owais',
      'notifMsg': 'Hellloooo is it working',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Abdullah',
      'notifMsg': 'Are you catching my point.',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Ali',
      'notifMsg': 'A notification page.',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Shahzeb',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Bilal',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Bilal',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Bilal',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Bilal',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Shahzeb',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Bilal',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Shahzeb',
      'notifMsg': 'Hellloooo',
    },
    {
      'notifImage':
          'https://cdn.pixabay.com/photo/2022/03/28/14/37/boy-7097685_960_720.jpg',
      'notifName': 'Shahzeb',
      'notifMsg': 'Hellloooo',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Notification',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: notify_list.length,
                  itemBuilder: (context, i) {
                    //CustomProductsView(img, titl, subtitl, trail, context) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          notify_list[i]['notifImage'],
                        ),
                      ),
                      // title: RichText(
                      //   text: TextSpan(
                      //     children: [
                      //       TextSpan(
                      //         text: notify_list[i]['notifName'],
                      //         style: TextStyle(
                      //             fontSize: 22.0, fontWeight: FontWeight.bold),
                      //       ),
                      //       TextSpan(
                      //         text: notify_list[i]['notifMsg'],
                      //         style: TextStyle(fontSize: 20.0),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      title: Text(
                        notify_list[i]['notifName'],
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      subtitle: Text(
                        notify_list[i]['notifMsg'],
                        style: TextStyle(fontSize: 20.0),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
