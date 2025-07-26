import 'package:facebook_clone/widget/custom_facebook_posts.dart';
import 'package:facebook_clone/widget/custom_facebook_stories.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // background like Facebook
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Search Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  // 🔸 Profile Picture
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/03/27/14/59/man-2179243_1280.jpg",
                    ),
                  ),

                  SizedBox(width: 10),

                  // 🔸 Search Bar
                  Expanded(
                    child: Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  // 🔸 Photo Icon
                  Icon(
                    Icons.insert_photo_outlined,
                    color: Colors.green,
                    size: 22,
                  ),
                ],
              ),
            ),

            // 🔹 Grey Divider
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.grey[400],
            ),

            // ...inside HomeScreen's Column children
//======================================================================================================================================
//======================================================================================================================================
// Story Custom Tile Call

// 🔹 Story Section
            SizedBox(
              height: 230,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  children: [
                    // Create Story box
                    Container(
                      height: 400,
                      width: 115,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add_circle, color: Colors.blue),
                            SizedBox(height: 5),
                            Text("Create Story",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),

                    // Repeated Story tiles
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
/*                    StoryCustomTile(
                      profileImage:"https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
                      storyImage:  "https://cdn.pixabay.com/photo/2015/05/18/23/53/backpacker-772991_1280.jpg",),
                    StoryCustomTile(
                      profileImage:"https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg",
                      storyImage:  "https://cdn.pixabay.com/photo/2024/07/13/07/40/cars-8891625_1280.jpg",),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2017/06/19/17/24/boy-2420289_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2020/10/14/03/18/man-5653200_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2017/03/27/13/28/man-2178721_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2020/04/25/20/33/mountain-5092625_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2016/03/27/17/40/road-1283230_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2016/11/18/19/39/beach-1836597_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2024/11/08/05/28/man-9182458_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2020/05/29/08/54/beach-5234306_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2023/08/15/09/21/camera-8191564_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2021/07/09/08/44/football-6398660_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
                      storyImage:"https://cdn.pixabay.com/photo/2014/03/17/22/26/game-289470_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2016/03/27/22/21/boy-1284509_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2023/10/23/17/03/audi-8336484_1280.jpg",
                    ),
                    StoryCustomTile(
                      profileImage:"https://cdn.pixabay.com/photo/2023/05/03/10/20/man-7967210_1280.jpg",
                      storyImage:"https://cdn.pixabay.com/photo/2016/11/21/15/08/playstation-1845880_1280.jpg",
                    ),

 */
                    //
                  ],
                ),
              ),
            ),
//========================================================================================================================================
//========================================================================================================================================

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
            // FacebookPosts(Profile_Pic_Url:"https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg", Profile_border_color: Colors.white, My_name: "Eddie Brooks",       Post_Url: "https://cdn.pixabay.com/photo/2020/08/24/21/44/man-5515150_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookPosts(Profile_Pic_Url:"https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg", Profile_border_color: Colors.white, My_name: "Michael Lee",    Post_Url: "https://cdn.pixabay.com/photo/2015/01/26/22/40/child-613201_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2017/06/19/17/24/boy-2420289_1280.jpg", Profile_border_color: Colors.white, My_name: "David Wilson",  Post_Url: "https://cdn.pixabay.com/photo/2024/01/10/16/22/man-8499961_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2017/03/27/13/28/man-2178721_1280.jpg", Profile_border_color: Colors.white, My_name: "Chris Johnson", Post_Url: "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg", Profile_border_color: Colors.white, My_name: "Daniel Moore",   Post_Url: "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2024/11/08/05/28/man-9182458_1280.jpg", Profile_border_color: Colors.white, My_name: "James Miller",  Post_Url: "https://cdn.pixabay.com/photo/2022/09/19/10/27/golf-7465213_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2015/11/08/09/05/beach-1033294_1280.jpg", Profile_border_color: Colors.white, My_name: "Mark Turner", Post_Url: "https://cdn.pixabay.com/photo/2017/01/14/12/59/iceland-1979445_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2022/06/21/08/57/male-7275452_1280.jpg", Profile_border_color: Colors.white, My_name: "Nick cooper",  Post_Url: "https://cdn.pixabay.com/photo/2016/07/28/09/01/mountains-1547302_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2019/09/01/10/13/portrait-4444764_1280.jpg", Profile_border_color: Colors.white, My_name:"Tom Felton",Post_Url: "https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2016/03/27/22/21/boy-1284509_1280.jpg", Profile_border_color: Colors.white, My_name: "Robert",        Post_Url :"https://cdn.pixabay.com/photo/2022/07/10/19/30/house-7313645_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg", Profile_border_color: Colors.white, My_name: "Rayan Gossling", Post_Url: "https://cdn.pixabay.com/photo/2019/12/29/17/45/winter-4727668_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2024/11/08/05/28/man-9182458_1280.jpg", Profile_border_color: Colors.white, My_name: "Cris ",         Post_Url: "https://cdn.pixabay.com/photo/2022/06/04/01/35/windsurfing-7241074_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),
            // FacebookCustomTile(Profile_Pic_Url:"https://cdn.pixabay.com/photo/2023/05/03/10/20/man-7967210_1280.jpg", Profile_border_color: Colors.white, My_name: "Luke",          Post_Url: "https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149_1280.jpg", Post_date: "july,8 4h", Post_title: "Nice weather I feel relex", Like_numbers: "234,782", comment_numbers: "11,284", share_numbers: "3,194"),

//========================================================================================================================================
          ],
        ),
      ),
    );
  }
}
