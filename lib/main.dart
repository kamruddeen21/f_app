
import 'package:f_app/screen/homescreen.dart';
import 'package:f_app/screen/product_overview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignIn (),
    );
  }
}
