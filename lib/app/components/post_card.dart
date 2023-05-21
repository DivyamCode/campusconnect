
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.url
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.only(left:15,right:15,top: 10,bottom:10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.person,),
                    SizedBox(width: 12),
                    Text("Dhairya"),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.only(top: 14.5, bottom: 14.5),
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
          Image(
            image:NetworkImage(url),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
               return const CircleAvatar();
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
               return Center(
                 child: CircularProgressIndicator(
                   value: loadingProgress.expectedTotalBytes != null
                       ? loadingProgress.cumulativeBytesLoaded /
                           loadingProgress.expectedTotalBytes!
                       : null,
                 ),
               );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Live webinar on blockchain technology",
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontSize:16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131313),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "We are excited to announce the official webinar with Jetso Analin on Blockchain technology.",
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF131313),
                  ),
                ),
                Container(
                  padding:const EdgeInsets.only(top: 5,left: 5,right: 5,bottom: 5),
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
      ),
    );
  }
}



class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

   

    return Container(
      // width: CommonFunctions.screenWidth(context)/2,
      margin:const EdgeInsets.symmetric(vertical: 5),
      child: Column(children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Container(
        //       padding: const EdgeInsets.fromLTRB(20, 9, 70, 9),
        //       child: Row(
        //         children: const [
        //           Icon(CupertinoIcons.person,),
        //           SizedBox(width: 12),
        //           Text("Dhairya"),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding:
        //           const EdgeInsets.only(top: 14.5, right: 20.0, bottom: 14.5),
        //       child: Row(
        //         children: [
        //           Container(
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(59),
        //               border: Border.all(color: const Color(0xFFD2D2D2)),
        //             ),
        //             padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
        //             child: const Text(
        //               "Web development",
        //             ),
        //           ),
        //           const Icon(Icons.more_vert),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
       
       
        Image.asset("assets/images/Screenshot.png"),
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







class Calculator {
   Result add;
   Calculator({required this.add});
   void nums(int a, int b){
     add = Add(a: a, b: b);
   }
   void calculate(){
      add.result();
   }
}

class Add implements Result{
   int a;
   int b;
   Add({required this.a,required this.b});
   @override
   result() {
      print(a+b);
   }
}


abstract class Result {
    result();
}