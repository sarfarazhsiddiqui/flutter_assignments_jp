import 'package:flutter/material.dart';

class PostsViews extends StatefulWidget {
  const PostsViews({super.key});

  @override
  State<PostsViews> createState() => _PostsViewsState();
}

class _PostsViewsState extends State<PostsViews> {
  TextEditingController postContentController = TextEditingController();
  TextEditingController postURLsController = TextEditingController();
  List posts = [
    {
      'content': 'a first image to display in start',
      'images': [
        'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      ]
//          'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
    }
  ];

  addPost(content, images) {
    posts.add({
      // 'content': postContentController.text,
      // 'images': [postURLsController.text]
      'content': content,
      'images': images,
    });
    postContentController.clear();
    postURLsController.clear();
    setState(() {});
    print(posts);
  }

  deletePost(index) {
    posts.removeAt(index);
    setState(() {});
  }

  // editPost(index, data) {
  //   posts[index] = {
  //     'content': data['content'],
  //     'urls': data['urls'],
  //   };
  //   setState(() {});
  // }

  editPost(index, content, images) {
    posts[index] = {
      'content': content,
      'images': images[0],
    };
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Screen"),
        backgroundColor: Color(0xffD3D3D3),
      ),
      backgroundColor: Color(0xffD3D3D3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              _showMyDialog();
            },
            child: AbsorbPointer(
              child: TextField(
                decoration: InputDecoration(hintText: 'Whats on your mind'),
                controller: postContentController,
              ),
            ),
          ),
          // TextField(
          //   controller: postURLsController,
          // ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              //addPost();
            },
            child: Text("Add item"),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () async {
                              await _showMyDialog(index: index);
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
                      posts[index]['images'][index],
//                    Image.network(posts[index]['images'],
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
          ))
        ],
      ),
    );
  }

  Future<void> _showMyDialog({int? index}) async {
    if (index != null) {
      postContentController.text = posts[index]['content'];
      postURLsController.text = posts[index]['images'];
    }

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('${index == null ? 'Add' : 'Edit'} Content'),
//          title: Text('Edit Content'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Content'),
                TextField(controller: postContentController),
                Text('Image URL'),
                TextField(controller: postURLsController),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                if (index != null) {
//chk                  editPost(index, postContentController.text, postURLsController.text);
                  editPost(index, postContentController.text,
                      postURLsController.text);
                } else {
                  addPost(postContentController.text, postURLsController.text);
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
