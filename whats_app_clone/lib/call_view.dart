import 'package:flutter/material.dart';
import 'package:whats_app_clone/widget/custom_whatsapp_call.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Calls',
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
          CustomWhatsappCall(
              'assets/images/default_user.jpg',
              Icons.call_received,
              'Salman Siddiqui',
              'Yesterday, 4:55 pm',
              Colors.red),
          CustomWhatsappCall('assets/images/young_person.png', Icons.call_made,
              'Muhammad Farhan', '25 June, 03:12 pm', Colors.black),
          CustomWhatsappCall('assets/images/female.jpg', Icons.call_made,
              'Fatima', '24 June, 10:52 am', Colors.black),
          CustomWhatsappCall('assets/images/guy.jpg', Icons.call_received,
              'Noman Saeed', '10 May, 07:35 am', Colors.red),
          CustomWhatsappCall('assets/images/japan_person.jpg',
              Icons.call_received, 'AsianMan', '12 June, 10:15 pm', Colors.red),
          CustomWhatsappCall('assets/images/paki_person.jpg', Icons.call_made,
              'Kamran Ali', 'Today 04:19 pm', Colors.black),
          CustomWhatsappCall('assets/images/default_user.jpg', Icons.call_made,
              'Wajahat Rehman', 'Thursday 05:00 pm', Colors.black),
          CustomWhatsappCall(
              'assets/images/young_lady.png',
              Icons.call_received,
              'M. Ali Khan',
              '05 June, 11:02 pm ',
              Colors.red),
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
