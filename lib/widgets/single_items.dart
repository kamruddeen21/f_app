import 'package:flutter/material.dart';
class SingleItems extends StatelessWidget {
  bool isBool = false;
  SingleItems({super.key, required this.isBool});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(child: 
              // ignore: sized_box_for_whitespace
              Container(
                height: 100,
                child: Center(
                child: Image.asset('assets/shop7.jpg'),
                ),
              )
              ),
               Expanded(child: 
              // ignore: sized_box_for_whitespace
              Container(
                height: 100,
                child: Column(
                  mainAxisAlignment:isBool == false ?
                   MainAxisAlignment.spaceAround :MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        children: const [
                          Text('ProductName',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                           Text('500\$/',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                          ),
                        ],
                  ),
                        isBool==false? Container(
                    margin: const EdgeInsets.only(right: 15,left: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(  
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30),
                        
                    ),
                    child: Row(
                      children: const [
                        Expanded(child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('1 pic',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),),
                        ),
                        ),
                        Center( child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: Colors.red,
                          ),
                          )
                      ],
                    ),
                  ):Text('1 pic')
                  ],
                ),
              )
              ),
               Expanded(child: 
              Container(
                  margin:  const EdgeInsets.only(right: 15,left: 15),
                    padding: isBool==false? 
                     const EdgeInsets.symmetric(horizontal: 10):const EdgeInsets.only(left: 15,right: 15),
                   child: EdgeInsets==false?   
                   Container(
                    height: 40,
                    width: 100,
                
                 decoration: BoxDecoration(  
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30),
                        
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add,
                          color: Colors.red,
                          ),
                             Text('Add',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          ),
                        ],
                      ),
                        ),
                   )
                   :Column(
                    children: [
                      const Icon(Icons.delete,
                      size: 30,
                      color: Colors.black54,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Container(
                    height: 40,
                    width: 100,
                
                 decoration: BoxDecoration(  
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30),
                        
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add,
                          color: Colors.red,
                          ),
                             Text('Add',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          ),
                        ],
                      ),
                      ),
                   )

                    ],
                   )
              )
              ),
             
            ],
          ),
        ),
         isBool == false?
              Container()
              :const Divider(
                height: 1,
                color: Colors.black45 ,
              )
      ],
    );
  }
}







