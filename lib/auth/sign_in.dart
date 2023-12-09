import 'package:f_app/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:   const BoxDecoration(
          
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/tomato.jpg')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                   Text('sign in to continue',
                   
                  
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                   const Text('Vegi',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20,
                        offset: Offset(5, 5)
                      )
                    ]
                  ),
                  ),
                   
                  SignInButton(
  Buttons.Apple,
  text: "Sign in with Apple",
  onPressed: () {},
),
   
                SignInButton(
  Buttons.Google,
  text: "Sign in with Google",
  onPressed: () {
     Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>const HomeScreen()));
  },
),
 
const Text('By signin in you are agreeing to our',
style: TextStyle(
  fontWeight: FontWeight.bold
),
),
const Text('Teams and Pricacy Policy',
style: TextStyle(
  fontWeight: FontWeight.bold
),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}