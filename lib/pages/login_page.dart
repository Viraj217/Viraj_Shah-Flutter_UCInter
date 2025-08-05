import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spiderman/components/my_text_field.dart';
import 'package:spiderman/components/sign_in_button.dart';
import 'package:spiderman/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});


  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  //sign user in method
  void signUserIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :  Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                //logo
                const CircleAvatar(
                  radius: 125,
                  backgroundImage: AssetImage('assets/spideylogo.jpg'),
                ),

                // const SizedBox(height: 50),

                // greeting
                Text(
                  'Yo Spidey',
                  style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),

                //username text
                MyTextField(
                  controller: emailController,
                  hintText: 'SHEILD ID',
                  obscureText: false,
                ),
                //pass text
                MyTextField(
                  controller: passwordController,
                  hintText: 'PASSWORD',
                  obscureText: true,
                ),


                //forgot pas
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25,),

                //sign in
                SignInButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700],
                          ),
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25,),

                //continue with google or such
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/google.jpg'),
                    const SizedBox(width: 25,),
                    SquareTile(imagePath: 'assets/apple.jpg'),
                  ],
                ),

                const SizedBox(height: 25,),

                //register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?',
                      style: TextStyle(color: Colors.grey[700]),),
                    const SizedBox(width: 3),
                    Text('Contact Nick Fury',
                      style: TextStyle(color: Colors.red[400], fontWeight: FontWeight.bold),),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
