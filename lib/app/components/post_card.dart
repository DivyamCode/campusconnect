
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 5),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 9, 70, 9),
              child: Row(
                children: const [
                  Icon(CupertinoIcons.person,),
                  SizedBox(width: 12),
                  Text("Dhairya"),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 14.5, right: 20.0, bottom: 14.5),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(59),
                      border: Border.all(color: const Color(0xFFD2D2D2)),
                    ),
                    padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                    child: const Text(
                      "Web development",
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
          ],
        ),
        Container(
          child: const Image(
            image: AssetImage("assets/images/Screenshot.png"),
            fit: BoxFit.cover,
          )
    
        ),
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.only(left: 17, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Live webinar on blockchain technology",
                style: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF131313),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "We are excited to announce the official webinar with Jetso Analin on Blockchain technology.",
                style: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF131313),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 8, 140, 8),
                margin: const EdgeInsets.only(top: 12),
                child: Row(children: [
                  Row(
                    children: const [
                      Text("28"),
                      SizedBox(width: 4),
                      Text("Likes"),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Row(children: const [
                    Text("12"),
                    SizedBox(width: 4),
                    Text("Comments"),
                  ]),
                ]),
              ),
              const Divider(
                thickness: 1,
                color: Colors.green,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 48, right: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(CupertinoIcons.hand_thumbsup),
              Icon(CupertinoIcons.bubble_right),
              Icon(CupertinoIcons.share),
            ],
          ),
        ),
                
      ],),
    );
  }
}