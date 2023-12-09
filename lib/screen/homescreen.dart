import 'package:f_app/auth/config/color.dart';
import 'package:f_app/screen/search/search.dart';
import 'package:flutter/material.dart';

import 'drawer_side.dart';
class HomeScreen extends StatelessWidget {

Widget singalProducts(){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 250,
          width: 130,
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
        
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/shop7.jpg')),
            Expanded(
              child: Column(
                
                children: [
                         const Padding(
                           padding: EdgeInsets.only(right: 40),
                           child: Text('perfect shop',
                           style: TextStyle(
                            fontWeight: FontWeight.bold
                           ),),
                         ),
                         const SizedBox(
                          height: 5,
                         ),
                         const Padding(
                           padding: EdgeInsets.only(right: 80),
                           child: Text('30%off'),
                         ),
                         const SizedBox(
                              height: 5,
                            ),
                         Row(
                          children: [
                            Expanded(child: Container(
                              height: 30,
                              width: 50,
                             
                              decoration: BoxDecoration(
                                 border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text('pay',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(child: Container(
                              height: 30,
                              width: 50,
                           decoration: BoxDecoration(
                                 border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              
                              child: Row(
                                children: const [
                                  Expanded(child: Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text('56',
                                    style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.bold),),
                                  ))
                                ],
                              ),
                            ),
                            )
                          ],
                         )
                ],
              )
              )
          ],
          ),
        );
}

 



  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      drawer: const DrawerSide(),
     
      appBar: AppBar(

        title: const Text('Home'),
        actions:  [
          CircleAvatar(
            radius: 12 ,
             backgroundColor: primarycolor,
               child: IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>const Search()));
                },
                icon:const Icon(
                Icons.search,size: 22,
              color: Colors.white,
                ), 
              ),
          ),
           
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CircleAvatar(
              radius: 12 ,
                backgroundColor: primarycolor,
              child:  IconButton(
                onPressed:(){},
                icon:const Icon(
                Icons.shop,size: 20,
              color: Colors.white,
                )
              ),
              
                     ),
           )
        ],
        backgroundColor: Colors.red,
      ),
   body: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
     child: ListView(children: [
      Container(
        height: 170,
        decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/shop7.jpg',
        
        )),
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
      
      child: Row(
        children: [
          Expanded(child: Container(
            child: Container(
            child: Column(
              children: [
                Padding(padding: 
                const EdgeInsets.only(right: 420,),
                child: Container(
                  height: 40,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    )
                  ),
                  child: const Text('Shop',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 10,
                        offset: Offset(3, 3),
                      ),
                    ]
                    
                  ),),
                ),
                ),
                  const Padding(
                    padding: EdgeInsets.only(right: 300,top: 20),
                    child: Text('30% off',style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                  ),
                const Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: Text('On all Products',style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            ),
            ),
          ),
          ),
        ],
      ),

      ),
    const SizedBox(
      height: 10,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        const Text('Products',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        GestureDetector(
          onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>const Search()));
          },
          child: const Text('View All',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        )
      ],
     ),
     SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: Row(
        children: [
          singalProducts(),
          singalProducts(),
          singalProducts(),
          singalProducts(),
          singalProducts(),
          singalProducts(),
        ],
       ),
     ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text('View All',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          )
        ],
           ),
      ),
       SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: Row(
        children: [
          singalProducts(),
          singalProducts(),
          singalProducts(),
          singalProducts(),
          singalProducts(),
          singalProducts(),
        ],
       ),
     ),
     
     ],
     ),
   )

    );
  }
}