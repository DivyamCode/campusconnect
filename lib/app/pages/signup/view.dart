import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/pages/signup/controller.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignupView extends GetView<SignupController> {
 

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
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
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 26,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller:controller.state.usernameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  
                  controller: controller.state.emailController,
                  decoration: const InputDecoration(
                    labelText: "Email"
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: controller.state.passwordController,
                  obscureText: controller.state.passwordShow,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        // setState(() {
                        //   passwordShow = !passwordShow;
                        // });
                      },
                      child: Icon(
                        controller.state.passwordShow == true?
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
                  function:
                    // Navigator.of(context).pushNamed("rollno");

                    controller.signup,
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
