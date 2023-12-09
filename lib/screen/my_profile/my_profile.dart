import 'package:f_app/auth/config/color.dart';
import 'package:f_app/screen/drawer_side.dart';
import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {

Widget listTile({required IconData icon, required String title}){
  return Column(
    children: [
      const Divider(
        height: 1,
      ),
      ListTile(
        leading: Icon(icon),
        title:Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}

  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        backgroundColor: primarycolor,
        title: const Text('My Profile'),
        elevation: 0.0,
      ),

      drawer: const DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primarycolor,
              ),
              Container(  
                
                height: 458,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                decoration: BoxDecoration(
                  color: ScaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft:Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 80,
                          width: 250,
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Anas Ansari',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                       child: Text('anasansari25@gmail.com')
                                    )
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: primarycolor,
                                  child: CircleAvatar(
                                    radius: 12,
                                    // ignore: sort_child_properties_last
                                    child: Icon(Icons.edit,
                                    color: primarycolor,
                                    ),
                                    backgroundColor: ScaffoldBackgroundColor,
                                  ),
                                )
                              ],
                          ),
                        )
                      ],
                    ),
                    listTile(icon: Icons.shop_outlined, title: 'My Orders'),
                    listTile(icon: Icons.location_on_outlined , title: 'My Delivary Address'),
                    listTile(icon: Icons.person_outline, title: 'Refer A Friends'),
                    listTile(icon: Icons.file_copy_outlined, title: 'Term & Condition'),
                    listTile(icon: Icons.policy_outlined, title: 'Privacy Policy'),
                    listTile(icon: Icons.add_chart_outlined, title: 'About'),
                    listTile(icon: Icons.exit_to_app_outlined, title: 'Log Out'),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40,left: 35),
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
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
          )
          
          
        ],
      ),
    );
  }
}