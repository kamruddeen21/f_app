import 'package:f_app/auth/config/color.dart';
import 'package:f_app/widgets/single_items.dart';
import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         backgroundColor: primarycolor,
         title: const Text('Search'),
      ),
      body: ListView(
        children:  [
          const ListTile(
            title: Text('items'),
          ),Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color.fromARGB(255, 217, 211, 211),
                filled: true,
                hintText: 'Search for items in the store ',
                suffixIcon: const Icon(Icons.search)
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
            SingleItems(isBool: false,),
            SingleItems(isBool: false,),
           SingleItems(isBool: false,),
           SingleItems(isBool: false,),
           SingleItems(isBool: false,),
           SingleItems(isBool: false,),
              
        ],
      ),
    );
  }
}