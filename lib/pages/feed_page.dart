import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdp_ui_instagram/model/post_model.dart';
import 'package:pdp_ui_instagram/model/story_model.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Story> storys = [
    Story('assets/images/user_1.jpeg', 'Jasmin'),
    Story('assets/images/user_2.jpeg', 'Sylvester'),
    Story('assets/images/user_3.jpeg', 'Laviva'),
    Story('assets/images/user_1.jpeg', 'Jasmin'),
    Story('assets/images/user_2.jpeg', 'Sylvester'),
    Story('assets/images/user_3.jpeg', 'Laviva'),
  ];
  List<Post> post = [
    Post(
      postImage: 'assets/images/feed_1.jpeg',
      userImage: 'assets/images/user_1.jpeg',
      userName: 'Brianne',
      caption: 'Consequatur nihil aliquid omnis consequatur',
    ),
    Post(
      postImage: 'assets/images/feed_2.jpeg',
      userImage: 'assets/images/user_2.jpeg',
      userName: 'Brianne',
      caption: 'Consequatur nihil aliquid omnis consequatur',
    ),
    Post(
      postImage: 'assets/images/feed_3.jpeg',
      userImage: 'assets/images/user_3.jpeg',
      userName: 'Brianne',
      caption: 'Consequatur nihil aliquid omnis consequatur',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stories',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Watch All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: storys.map((e) {
                  return _itemOfStory(e);
                }).toList(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: post.length,
                itemBuilder: (context, index) {
                  return _itemOfPost(post[index]);
                },
              ),
            ),

          ],
        )),
      ),
    );
  }

  Widget _itemOfPost(Post post) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage(post.postImage),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      post.userName,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    SimpleLineIcons.options,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          FadeInImage(
            width: MediaQuery.of(context).size.width,
            image: AssetImage(post.postImage),
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/images/placeholder.png'),
          ),
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesome.heart_o,
                          color: Colors.grey,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          FontAwesome.comment_o,
                          color: Colors.grey,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          FontAwesome.send_o,
                          color: Colors.grey,
                        ),
                        onPressed: () {}),
                  ],
                ),
                IconButton(icon: Icon(FontAwesome.bookmark_o, color: Colors.grey,), onPressed:(){}),
              ],
            ),
          ),
          Container(width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Linked by",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " Singmund, ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " Yessenia, ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Dayana, ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " and",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " 1236 others",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,

              text: TextSpan(
                children: [
                  TextSpan(
                      text: post.userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                  ),
                  TextSpan(
                      text: ' ${post.caption}',
                      style: TextStyle(
                        color: Colors.white,
                      )
                  ),
                ],

              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.topLeft,
              child: Text('Febuary 2020', style: TextStyle(color: Colors.grey),)),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget _itemOfStory(Story story) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(color: Color(0xFF8e44ad), width: 3),
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                width: 70,
                height: 70,
              ),
            ),
          ),
        ),
        Text(
          story.name,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
