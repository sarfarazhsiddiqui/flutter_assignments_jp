import 'package:facebook_clone/widget/custom_facebook_posts.dart';
import 'package:facebook_clone/widget/custom_facebook_stories.dart';
import 'package:facebook_clone/widget/custom_fb_posts.dart';
import 'package:flutter/material.dart';

class FBHomeStlView extends StatelessWidget {
  const FBHomeStlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // search block
            Row(
              //              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/03/27/14/59/man-2179243_1280.jpg",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.post_add,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              thickness: 2,
              indent: 1,
              endIndent: 20,
            ),
            // stories block
            SingleChildScrollView(
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
                  FacebookStories(
                      profileImage:
                          "https://cdn.pixabay.com/photo/2024/11/22/13/20/man-9216455_1280.jpg",
                      storyImage:
                          "https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_1280.jpg",
                      profileName: 'Sarfaraz Siddiqui'),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                  FacebookStories(
                      profileImage:
                          "https://cdn.pixabay.com/photo/2024/11/22/13/20/man-9216455_1280.jpg",
                      storyImage:
                          "https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_1280.jpg",
                      profileName: 'Sarfaraz Siddiqui'),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                  FacebookStories(
                      profileImage:
                          "https://cdn.pixabay.com/photo/2024/11/22/13/20/man-9216455_1280.jpg",
                      storyImage:
                          "https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_1280.jpg",
                      profileName: 'Sarfaraz Siddiqui'),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                  FacebookStories(
                      profileImage:
                          "https://cdn.pixabay.com/photo/2024/11/22/13/20/man-9216455_1280.jpg",
                      storyImage:
                          "https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_1280.jpg",
                      profileName: 'Sarfaraz Siddiqui'),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                  FacebookStories(
                      profileImage:
                          "https://cdn.pixabay.com/photo/2024/11/22/13/20/man-9216455_1280.jpg",
                      storyImage:
                          "https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_1280.jpg",
                      profileName: 'Sarfaraz Siddiqui'),
                  FacebookStories(
                    profileImage:
                        "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                    storyImage:
                        "https://cdn.pixabay.com/photo/2016/11/29/04/54/photographer-1867417_1280.jpg",
                    profileName: 'Salman Ahmed',
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              indent: 1,
              endIndent: 20,
            ),
/*
            FacebookPosts(
                Profile_Pic_Url:
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
                Profile_border_color: Colors.white,
                My_name: "Daniel clif",
                Post_Url:
                    "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg",
                Post_date: "july,8 4h",
                Post_title: "Nice weather I feel relex",
                Like_numbers: "234,782",
                comment_numbers: "11,284",
                share_numbers: "3,194"),
            FacebookPosts(
                Profile_Pic_Url:
                    "https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                Profile_border_color: Colors.white,
                My_name: "John Carter",
                Post_Url:
                    "https://cdn.pixabay.com/photo/2018/09/12/12/14/man-3672010_1280.jpg",
                Post_date: "july,8 4h",
                Post_title: "Nice weather I feel relex",
                Like_numbers: "234,782",
                comment_numbers: "11,284",
                share_numbers: "3,194"),
*/
            FbPostWithStats(
              userName: 'Sarfaraz',
              postText: 'Check out this cool Flutter layout!',
              postImageUrl:
                  "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
              likeCount: 3000,
              shareCount: 45,
            ),
            FbPostWithStats(
              userName: 'Sarfaraz',
              postText: 'Check out this cool Flutter layout!',
              postImageUrl:
                  "https://img.freepik.com/free-photo/woman-beach-with-her-baby-enjoying-sunset_52683-144131.jpg?size=626&ext=jpg",
              likeCount: 120,
              shareCount: 45,
            ),
            FbPostWithStats(
              userName: 'Sarfaraz',
              postText: 'Check out this cool Flutter layout!',
              postImageUrl:
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
              likeCount: 120,
              shareCount: 45,
            ),
          ],
        ),
      ),
    );
  }
}
