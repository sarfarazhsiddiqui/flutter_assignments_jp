import 'package:flutter/material.dart';

class FacebookPosts extends StatelessWidget {
  final String Profile_Pic_Url;
  final Color Profile_border_color;
  final String My_name;
  final String Post_Url;
  final String Post_date;
  final String Post_title;
  final String Like_numbers;
  final String comment_numbers;
  final String share_numbers;

  FacebookPosts(
      {super.key,
      required this.Profile_Pic_Url,
      required this.Profile_border_color,
      required this.My_name,
      required this.Post_Url,
      required this.Post_date,
      required this.Post_title,
      required this.Like_numbers,
      required this.comment_numbers,
      required this.share_numbers});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(height: 3, width: double.infinity, color: Colors.grey[400]),
        //=====================================================================================================================
        //=====================================================================================================================
        // Profile title subtile
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 8, left: 2),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  Profile_Pic_Url,
                ),
                radius: 17,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Profile_border_color, width: 2),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        My_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        " · Follow",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 10),
                      child: Text(
                        Post_date,
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 10),
                      child: Text(
                        " · ",
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.public_sharp,
                        size: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              child: IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.black),
                onPressed: () {},
              ),
              // Icon(Icons.more_horiz,color: Colors.black,)
            ),
            Container(
              margin: EdgeInsets.only(top: 5),

              child: IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () {},
              ),
              // Icon(Icons.close,color: Colors.black,)
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.only(left: 2),
          child: Text(
            Post_title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        //=====================================================================================================================
        //=====================================================================================================================

        // image
        SizedBox(height: 5),

        Image(
          image: NetworkImage(
            Post_Url,
          ),
        ),

        //=====================================================================================================================
        //=====================================================================================================================
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 8),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.thumb_up, color: Colors.white, size: 11),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red[400],
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.favorite, color: Colors.white, size: 11),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 6),
                  child: Text(Like_numbers),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 180),
                  child: Text("$comment_numbers Comments"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 1),
                  child: Text("$share_numbers Share"),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 18),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(width: 20),
            Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.grey[700],
            ),
            // SizedBox(width: 5),
            Text("Like", style: TextStyle(color: Colors.grey[700])),

            SizedBox(width: 70),

            Icon(Icons.mode_comment_outlined, color: Colors.grey[700]),
            Text("Comment", style: TextStyle(color: Colors.grey[700])),
            SizedBox(width: 70),

            Icon(Icons.reply, color: Colors.grey[700]),
            Text("Share", style: TextStyle(color: Colors.grey[700])),
          ],
        ),
        SizedBox(height: 16),

        Container(height: 3, width: double.infinity, color: Colors.grey[400]),
      ],
    );
  }
}
