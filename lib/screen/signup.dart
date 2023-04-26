import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordShow = true;

  _signup(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
                  
              children: [
                const SizedBox(height: 20.0),
                const Text(
                  "Signup",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email"
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: passwordController,
                  obscureText: passwordShow,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passwordShow = !passwordShow;
                        });
                      },
                      child: Icon(
                        passwordShow == true?
                        Icons.visibility: Icons.visibility_off,
                    ),
                    ),
                    labelText: "Password"
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "By continuing you agree to our Terms of Service",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  "and Privacy Policy",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10.0),
                PrimaryButton(
                  function: () {
                    Navigator.of(context).pushNamed("rollno");
                  },
                  labelText: "signup",
                ),
                
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}





