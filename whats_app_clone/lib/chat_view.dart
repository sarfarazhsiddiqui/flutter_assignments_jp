import 'package:flutter/material.dart';
import 'package:whats_app_clone/widget/custom_whatsapp_chat.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Color.fromRGBO(7, 94, 84, 1.0),
              fontWeight: FontWeight.w600),
        ),
        // leading: Icon(
        //   Icons.more_vert_outlined,
        //   color: Colors.black,
        // ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        children: [
          CustomWhatsappChat(
              'assets/images/default_user.jpg',
              Icons.check,
              'Salman Siddiqui',
              'Barish kaisi hai ap kay area main.',
              '12:05 am'),
          CustomWhatsappChat(
              'assets/images/young_person.png',
              Icons.check,
              'Muhammad Farhan',
              'Bhai Sahab office ka aaj off hai.',
              '01:02 am'),
          CustomWhatsappChat(
              'assets/images/female.jpg',
              Icons.check,
              'Fatima',
              'Car service sai abhi tak naheen aye, kab service complete ho jae gi.',
              '11:09 pm'),
          CustomWhatsappChat(
              'assets/images/group_muslim.png',
              Icons.person,
              'MuslimsTalk',
              'Aaj after maghrib pray bayan ho ga, ap sub sai shirkat ki darkhawast hai.',
              ''),
          CustomWhatsappChat(
              'assets/images/guy.jpg',
              Icons.check,
              'Noman Saeed',
              'Lunch ka kya program hai, aaj possible ho ga, ya kam chance hai, jald reply karna plz.',
              '04:00 pm'),
          CustomWhatsappChat('assets/images/default_group.png', Icons.person_2,
              'Flutter Team', 'A new message ......', ''),
          CustomWhatsappChat(
              'assets/images/japan_person.jpg',
              Icons.check,
              'AsianMan',
              'When you are planning to visit Chine for further meeting of products finalization.',
              '12:03 am'),
          CustomWhatsappChat('assets/images/paki_person.jpg', Icons.check,
              'Kamran Ali', 'Picnic Kaisi rahe, kab wapsi aye.', '07:03 am'),
          CustomWhatsappChat(
              'assets/images/default_user.jpg',
              Icons.check,
              'Wajahat Rehman',
              'یونیورسٹی کی کلاسز جولائ میں شروع ہونگی.',
              '11:10 am'),
          CustomWhatsappChat('assets/images/young_lady.png', Icons.check,
              'M. Ali Khan', 'Today is off for our school.', '11:02 pm'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {
            if (index == 1) Navigator.pushNamed(context, 'status');
            if (index == 2) Navigator.pushNamed(context, '');
            if (index == 3) Navigator.pushNamed(context, 'call');
          },
          backgroundColor: Colors.white,
          selectedItemColor: Color.fromRGBO(7, 94, 84, 1.0),
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.message_outlined,
                  //                color: Colors.black,
                ),
                label: 'Chats'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.update_rounded,
//                  color: Colors.black,
                ),
                label: 'Updates'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.person_3,
//                  color: Colors.black,
                ),
                label: 'Communities'),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.call,
//                color: Colors.black,
              ),
              label: 'Calls',
            ),
          ]),
    );
  }
}
