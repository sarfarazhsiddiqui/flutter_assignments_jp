import 'package:flutter/material.dart';

class StoriesView extends StatefulWidget {
  const StoriesView({super.key});

  @override
  State<StoriesView> createState() => _StoriesViewsState();
}

class _StoriesViewsState extends State<StoriesView> {
  TextEditingController postContentController = TextEditingController();
  TextEditingController postURLsController = TextEditingController();
  List stories = [
    {
      'content': 'a first image to display in start',
      'images': [
        'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
      ]
//          'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
    }
  ];

  addStories(content, images) {
    stories.add({
      // 'content': postContentController.text,
      // 'images': [postURLsController.text]
      'content': content,
      'images': images,
    });
    postContentController.clear();
    postURLsController.clear();
    setState(() {});
    print(stories);
  }

  deletePost(index) {
    stories.removeAt(index);
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
    stories[index] = {
      'content': content,
      'images': images[0],
    };
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stories Screen"),
          backgroundColor: Color(0xffD3D3D3),
        ),
        backgroundColor: Color(0xffD3D3D3),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      Text('Create Story')
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: stories.length,
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
                              "${stories[index]['content']}",
                            ),
                            Image.network(
                              stories[index]['images'][index],
//                    Image.network(posts[index]['images'],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ]),
        ));
  }

  Future<void> _showMyDialog({int? index}) async {
    if (index != null) {
      postContentController.text = stories[index]['content'];
      postURLsController.text = stories[index]['images'];
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
                  addStories(
                      postContentController.text, postURLsController.text);
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
