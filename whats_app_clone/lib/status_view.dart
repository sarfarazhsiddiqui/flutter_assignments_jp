import 'package:flutter/material.dart';
import 'package:whats_app_clone/widget/custom_whatsapp_status.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Updates',
          style: TextStyle(
              color: Color.fromRGBO(7, 94, 84, 1.0),
              fontWeight: FontWeight.w600),
        ),
        // leading: Icon(
        //   Icons.more_vert_outlined,
        //   color: Colors.black,
        // ),
        actions: [
          //camera_alt_outlined
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
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
          CustomWhatsappStatus(
              'assets/images/default_user.jpg', 'Salman Siddiqui', '12:05 am'),
          CustomWhatsappStatus(
              'assets/images/young_person.png', 'Muhammad Farhan', '01:02 am'),
          CustomWhatsappStatus(
              'assets/images/female.jpg', 'Fatima', '11:09 pm'),
          CustomWhatsappStatus('assets/images/group_muslim.png', 'MuslimsTalk',
              '04 Minutes ago'),
          CustomWhatsappStatus(
              'assets/images/guy.jpg', 'Noman Saeed', '04:00 pm'),
          CustomWhatsappStatus(
              'assets/images/default_group.png', 'Flutter Team', '5 Hours Ago'),
          CustomWhatsappStatus(
              'assets/images/japan_person.jpg', 'AsianMan', '12:03 am'),
          CustomWhatsappStatus(
              'assets/images/paki_person.jpg', 'Kamran Ali', '07:03 am'),
          CustomWhatsappStatus(
              'assets/images/default_user.jpg', 'Wajahat Rehman', '11:10 am'),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.white,
      //     selectedItemColor: Color.fromRGBO(7, 94, 84, 1.0),
      //     unselectedItemColor: Colors.white,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.message_outlined,
      //             color: Colors.black,
      //           ),
      //           label: 'Chats'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.message_rounded,
      //             color: Colors.black,
      //           ),
      //           label: 'Updates'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.person_3,
      //             color: Colors.black,
      //           ),
      //           label: 'Communities'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.call,
      //             color: Colors.black,
      //           ),
      //           label: 'Calls'),
      //     ]),
    );
  }
}
