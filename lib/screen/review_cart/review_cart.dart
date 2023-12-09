import 'package:f_app/widgets/single_items.dart';
import 'package:flutter/material.dart';
class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar:  ListTile(
      title: const Text('Total Amount',
        style: TextStyle(
         fontWeight: FontWeight.bold,
         color: Colors.black,
      ),),
      subtitle: Text('\$500.0 ',
      style: TextStyle(
        color: Colors.red
      ),
      ),
      // ignore: sized_box_for_whitespace
      trailing: Container(
          width: 150,
          child: MaterialButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: () {  },
            child: const Text('Submit'),),
      ),
    ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Review Cart',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
           SingleItems(isBool: true,),
           SingleItems(isBool: true,),
           SingleItems(isBool: true,),
           SingleItems(isBool: true,),
           
              
        ],
      ),
    );
  }
}