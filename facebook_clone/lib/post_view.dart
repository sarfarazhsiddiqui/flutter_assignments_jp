import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  TextEditingController postContentController = TextEditingController();
  TextEditingController postURLController = TextEditingController();

  List posts = [
    {
      'content': 'A test post',
      'images': //[
          'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      //],
    }
  ];

  addPost(content, images) {
    posts.add({
      'content': content,
      'images': images
//      [
//        'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      // 'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      //    ]
    });
    content.clear();
    setState(() {});
    print(posts);
  }

  deletePost(index) {
    posts.removeAt(index);
    setState(() {});
    print('delete');
  }

//  editPost(index, data) {
  editPost(index, content, images) {
    posts[index] = {
      // 'content': data['content'],
      // 'urls': data['urls'],
      'content': 'content',
      'images': 'images',
    };
    setState(() {});
    print('edit');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post View'),
        backgroundColor: Color(0xffD3D3D3),
      ),
      backgroundColor: Color(0xffD3D3D3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            controller: postContentController,
          ),
          TextField(
            controller: postURLController,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
//              await _showMyDialog();
              addPost(postContentController.text, postURLController.text);
            },
            child: Text("Add item"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  // change Container to Card
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () async {
                                await _showMyDialog();
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                deletePost(index);
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                      Text(
                        "${posts[index]['content']}",
                      ),
                      Image.network(
                        posts[index]['images'],
//                        posts[index]['images'][0],
                      ),
                      // Container(
                      //   height: 100,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       image: NetworkImage(posts[index]['images'][0]),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> _showMyDialog({int? index}) async {
    if (index != null) {
      postContentController.text = posts[index]['content'];
      postURLController.text = posts[index]['images'];
    }

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('${index == null ? 'Add' : 'Edit'} Content'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Content'),
                TextField(controller: postContentController),
                Text('Image URL'),
                TextField(controller: postURLController),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                if (index != null) {
                  editPost(index, postContentController.text,
                      postURLController.text);
                } else {
                  addPost(postContentController.text, postURLController.text);
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
