import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/screen/orderreceived.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        backgroundColor: Colors.white,
        
        actions: [
        Icon(Icons.cancel, color: Colors.grey,)
       
      ],),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff0B845C
),
            Color(0xff0D986A)
          ])
        ),
        child: Column(
            children: [
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.balcony_sharp),
                  SizedBox(width: 25,),
                  Text("Shop ",style: TextStyle(fontSize: 16,color: Colors.white)
                  
                  ),
              
                  
                ],
              ),
      SizedBox(height: 20,),
      
              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
      
                children: [
                  Icon(Icons.account_balance_wallet),
                  SizedBox(width: 25,),
                  Text("Plant Care",style: TextStyle(fontSize: 16,color: Colors.white)
                  
                  ),
              
                  
                ],
              ),
      
      SizedBox(height: 20,),
      
              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
      
                children: [
                  Icon(Icons.shopping_bag),
                  SizedBox(width: 25,),
                  Text("Community ",style: TextStyle(fontSize: 16,color: Colors.white)
                  
                  ),
              
                  
                ],
              ),
      
      SizedBox(height: 20,),
      
                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
      
                children: [
                                  
      
                  Icon(Icons.person),
                  SizedBox(width: 25,),
                  Text("MyAccount ",style: TextStyle(fontSize: 16,color: Colors.white)
                  
                  ),
      
      
              
                  
                ],
              ),
      
      SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fire_truck_outlined),
                  SizedBox(width: 25,),
                  Text("Track order ",style: TextStyle(fontSize: 16,color: Colors.white)
                  
                  ),
      
                  
              
                  
                ],
              ),
              SizedBox(height: 35,),
              Center(
                child: Text(
                  "Get The Dirt ",style: TextStyle(color: Colors.white)
                ,)
              ),
              SizedBox(height: 35,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                         border: Border.all(
            color: Colors.grey,
            width: 10,
            
                         )
                  ),
                  child: Text("Enter Your Email",style:TextStyle(fontSize: 16,color: Colors.white)),
                ),
      
              ),
      
      
                    SizedBox(height: 40,),
                    Center(
                      child: Text("FAQ",style:TextStyle(fontSize: 16,color: Colors.white)),
                    ),
      
                  
                    SizedBox(height: 25,),
                    Center(
                      child: Text("About AS",style:TextStyle(fontSize: 16,color: Colors.white)),
                    ),
      
                    
                    SizedBox(height: 25,),
                    Center(
                      child: Text("Contact us",style:TextStyle(fontSize: 16,color: Colors.white)),
                    ),
                    
                    Center(
                      child: ElevatedButton(onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  order()));
                        
        }, child: Text("order recieved page")),
                    )
            ],
      
        ),
      )

          
        
      
    );
  }
}