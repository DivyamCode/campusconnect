import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



class Rollno extends StatefulWidget {
  const Rollno({super.key});

  @override
  State<Rollno> createState() => _RollnoState();
}

class _RollnoState extends State<Rollno> {
  TextEditingController rollController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5.0),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("signup");
                },
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black87,
                  weight: 10.0,
                ),
              ),
              const SizedBox(height: 30.0),
              Text(
                "Enter your University Roll no",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: rollController,
                  decoration: const InputDecoration(
                    labelText: "Roll Number"
                  ),
                ),
                const SizedBox(height: 60.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // handle button press
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade400,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}