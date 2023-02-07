import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Image.asset("images/Logo.png",color:Colors.green,height: 30, width: 40,), 
        
        
        actions: [
          Image.asset("images/Logo.png",color:Colors.green,),
          SizedBox(width: 20,),
          Text("Plantify"),
          SizedBox(width: 30,),
          Icon(Icons.notifications),
          SizedBox(width: 25,),
          Icon(Icons.align_horizontal_right_outlined)
        ],
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}