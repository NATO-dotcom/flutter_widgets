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
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              width: 350,
              child: MyTextfield(controller: emailController, hintText: "Enter your email", obsecureText: false)),
        
            const SizedBox(height: 15),
           
            //password text field
            Container(
              width: 350,
              child: MyTextfield(controller: passwordController, hintText: "password", obsecureText: true)),
        
        
              const SizedBox(height: 100,),
        
        
            //login button
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),)),
            )
        
        
        
          ],
        ),
      ),
    );
  }
}