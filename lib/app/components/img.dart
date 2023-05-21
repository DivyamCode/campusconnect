
import 'package:flutter/material.dart';

class NetworkImgWidget extends StatelessWidget {
  const NetworkImgWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 165, 125, 139)),borderRadius: BorderRadius.circular(50)),
     height: 45,
     width: 45,
     child:ClipOval(
       child: Image.network(url,errorBuilder: (context, error, stackTrace) =>const CircleAvatar(),loadingBuilder: (context, child, loadingProgress){
         if (loadingProgress == null) return child;
               return Center(
                 child: CircularProgressIndicator(
                   value: loadingProgress.expectedTotalBytes != null
                       ? loadingProgress.cumulativeBytesLoaded /
                           loadingProgress.expectedTotalBytes!
                       : null,
                 ),
               );
       },),
     ),
              );
  }
}
