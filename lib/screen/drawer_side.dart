import 'package:f_app/screen/review_cart/review_cart.dart';
import 'package:flutter/material.dart';

import 'my_profile/my_profile.dart';
class DrawerSide extends StatelessWidget {
  get onTap => null;

   Widget listTile({ required IconData icon,  required String title,
     required  Function() onTap}){
    return ListTile(
      onTap: onTap ,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(title,
      style: const TextStyle(
        color: Colors.black,
      ),
      ),
    );
  }
  const DrawerSide({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Container(
          color: const Color.fromARGB(255, 239, 69, 69),
          child: ListView(
            children: [
                 DrawerHeader(child: Row(
                  children:  [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      child: CircleAvatar(
                        // ignore: sort_child_properties_last
                        child: Text('Shop',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green,
                              offset: Offset(3, 3),
                            )
                          ]
                        ),),
                        backgroundColor: Colors.red,
                        radius: 43,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text('Welcome Guest'),
                        const SizedBox(
                          height: 20,
                          
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: 30,
                          child: OutlinedButton(onPressed: () {}, 
                          child:  const Text('Login',
                          style: TextStyle(
                            fontSize: 20,
                            
                            color: Colors.black
                          ),),
                          
                          
                          ),
                        ) 
                      ],  
                       
                    )
                  ],
                 ),
                 ),
                 listTile(icon: Icons.home_outlined, title: 'Home', onTap: (){}, ),
                 listTile(icon: Icons.shop_outlined, title: 'Review Cart', onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ReviewCart()));
                 },),
                 listTile(icon: Icons.person_outline, title: 'My Profile', onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const MyProfile()));
                 }, ),
                 listTile(icon: Icons.notifications_outlined, title: 'Notification', onTap:(){},),
                 listTile(icon: Icons.star_outlined, title: 'Rating & Review', onTap: (){}, ),
                 listTile(icon: Icons.favorite_outlined, title: 'Wishlist', onTap: (){},),
                  listTile(icon: Icons.copy_outlined, title: 'Raise a Complaint', onTap: (){},),
                 listTile(icon: Icons.format_quote_outlined, title: 'FAQS', onTap:(){}, ),                    
                 
                 // ignore: sized_box_for_whitespace
                 Container(
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Contact Support',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(
                        height: 10,
                        
                      ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            Text('Call us:'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('7865078620'), 
                          ],
                        ),
                      ),
                       const SizedBox(
                            height: 10,
                          ),
                           Row(
                        children: const [
                          Text('Mail us:'),
                          SizedBox(
                            width: 20,
                          ),
                          Text('kamruddeenqureshi56@gmail.com'), 
                        ],
                      ),
                    ],
                  ),
                 )
            ],
          ),
        ),
      );
  }
}