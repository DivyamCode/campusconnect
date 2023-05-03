import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/pages/signup/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordShow = true;

  _signup() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(  
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.symmetric(horizontal:20,vertical: 30),
            margin:const EdgeInsets.symmetric(horizontal:20),
            // padding: const EdgeInsets.only(left: 40, right: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Roboto',
                      fontSize: 26,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Colors.black87,

                    ),
                  ),
                  const SizedBox(height: 40.0),
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                      )
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                  ),
                  const SizedBox(height: 10.0),
                  TextField(
                    controller: passwordController,
                    obscureText: passwordShow,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            // setState(() {
                            //   passwordShow = !passwordShow;
                            // });
                          },
                          child: Icon(
                            passwordShow == true
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: "Password"),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "By continuing you agree to our Terms of Service",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    "and Privacy Policy.",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  PrimaryButton(
                    function: () {
                      Navigator.of(context).pushNamed("rollno");
                    },
                    labelText: "Sign up",
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
