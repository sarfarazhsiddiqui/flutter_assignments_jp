import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List carts = [
    {
      'title': 'The Enchanted Nightingale',
      'subtitle': 'Music by Julie Gable. Lyrics by Sidney Stein.',
      'price': 'Rs.200',
      'img':
          'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
    },
    {
      'title': 'Mystic Sunrise',
      'subtitle': 'Composed by Alan Walker. Lyrics by Nora Fatehi.',
      'price': 'Rs.350',
      'img':
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    },
    {
      'title': 'Ocean Dreams',
      'subtitle': 'Music by Aqua Wave. Lyrics by Deep Blue.',
      'price': 'Rs.180',
      'img':
          'https://cdn.pixabay.com/photo/2016/11/29/03/53/beach-1867271_1280.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'My Order',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Ongoing')),
              ElevatedButton(onPressed: () {}, child: Text('Completed')),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: carts.length,
              itemBuilder: (context, index) {
                final item = carts[index];
                return Card(
//                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  elevation: 3,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(item['img']),
                    ),
                    title: Text(item['title']),
                    subtitle: Text(item['subtitle']),
                    trailing: Text(
                      item['price'],
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tapped on ${item['title']}')),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           const ListTile(
      //             leading: CircleAvatar(
      //               backgroundImage: NetworkImage(
      //                   'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg'),
      //               //NetworkImage(carts[index]['img']
      //             ),
      //             //Icon(Icons.album),
      //             title: Text('The Enchanted Nightingale'),
      //             subtitle:
      //                 Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      //             trailing: Text(
      //               'Rs.200',
      //               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      //-----
      // ListView.builder(
      //     itemCount: carts.length,
      //     itemBuilder: (context, index) {
      //       //                final item = carts[index];
      //       return Card(
      //         elevation: 3,
      //         shadowColor: Colors.grey,
      //         //                child: Column(
      //         //                   children: [
      //         //                     Row(
      //         //                       mainAxisAlignment: MainAxisAlignment.end,
      //         //                       children: [
      //         //                         IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
      //         //                         IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
      //         //                       ],
      //         //                     ),
      //         //                     Text(
      //         //                       "${posts[index]['content']}",
      //         //                     ),
      //         //                     Image.network(
      //         //                       posts[index]['images'][0],
      //         //                     ),
      //         //
      //         child: ListTile(
      //           leading: Icon(Icons.add),
      //           //                           leading: CircleAvatar(
      //           //                             backgroundImage: NetworkImage(carts[index]['img']
      //           // //                              'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg'
      //           //                                 ),
      //           //                           ),
      //           title: //carts[index]['txt'],
      //               Text(
      //             'data2',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //           subtitle: //carts[index]['subtxt'],
      //               Text('data2'),
      //           trailing: //carts[index]['amont']
      //               Text('Rs.data3'),
      //         ),
      //       );
      //     }),
    );
  }
}
