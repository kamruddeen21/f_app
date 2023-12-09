import 'package:f_app/auth/config/color.dart';
import 'package:flutter/material.dart';
class ProductOverview extends StatefulWidget {
  const ProductOverview({super.key});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

Widget bonntonNavigatorBar({
  required Color iconColor,
   required Color backgroundColor,
   required Color color,
   required String title,
   required IconData iconData,
   }){
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,
            size: 17,
            color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
            style: const TextStyle(
              color: Colors.white
            ),
            ),
          ],
          
        ),
      ),
      );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bonntonNavigatorBar(
            backgroundColor: Colors.grey,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: 'Add to WishList',
            iconData: Icons.favorite_outline,
          ), bonntonNavigatorBar(
            backgroundColor: const Color.fromARGB(255, 37, 3, 1),
            color: Colors.white70,
            iconColor: Colors.grey,
            title: 'Add to Cart',
            iconData: Icons.shop_outlined,
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Product Overview',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ),
   
   body:Column(
    children: [
      Expanded(
        // ignore: sized_box_for_whitespace
        flex: 2, child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children:  [
                const ListTile(
                  title: Text('Bag',style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ) 
                  ),
                  subtitle: Text('500/\$'),
                ),
                Container(
                  height: 250,
                  
                decoration:  const BoxDecoration(
                  
                  image: DecorationImage(
                
                    image: AssetImage('assets/shop7.jpg'))
                ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: const Text('Available Option'),
                ),
                Padding(padding:const EdgeInsets.symmetric(horizontal: 10
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                             const CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                    Radio(
                      activeColor: Colors.green, groupValue: null,
                       onChanged: (value) { 
                        
                        }, value: null,
                    )
                      ],
                    ),
                    const Text('500/\$'),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30,
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,
                          size: 15,
                          color: primarycolor,
                             
                          ),
                          Text('Add',
                          style: TextStyle(
                            color: primarycolor,
                          ),)
                        ],
                      ),
                    )
                    
                    
                  ],
                ),
                ) 
                
              ],
            ),
          ),
        ),
      ),
   Expanded(child: Container(
    padding: const EdgeInsets.all(20),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('About this Product',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
        'In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer. ',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),)
      ],
    ),
   ))

    ],
   ) ,

    );
  }
}