import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



class Rollno extends StatefulWidget {
  const Rollno({super.key});

  @override
  State<Rollno> createState() => _RollnoState();
}

class _RollnoState extends State<Rollno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text(
                "Enter your University Roll no",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),

                
                
            ],
          ),
        ),
      ),
    );
  }
}