import 'package:flutter/material.dart';
import 'package:widgets/widgets/my_textField.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //spacing
          const SizedBox(height: 50),
          // image logo
          Center(child: Image.asset("assets/flutter.png",height: 200,width: 200,)),

          const SizedBox(height: 20),

          //text
          Text("Welcome back you've been missed!",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400
          ),),

          const SizedBox(height: 50),

          //email text field
          MyTextfield(controller: emailController, hintText: "Enter your email", obsecureText: false),

          const SizedBox(height: 50),
         
          //password text field
          MyTextfield(controller: passwordController, hintText: "password", obsecureText: true),


          //login button


        ],
      ),
    );
  }
}