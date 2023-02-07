import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/screen/signin.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(255, 233, 231, 91),
      appBar: AppBar(
                backgroundColor:Color.fromRGBO(255, 253, 252, 0.639) ,

leading: Icon(Icons.arrow_back_ios_new_outlined, color: Color.fromRGBO(0, 78, 91, 1),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Center(
              // child: Image.asset("images/logo1.png"),
              child: Column(
                children: [
                  Image.asset("images/Logo1.png"),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                       border: Border.all(
          color: Colors.red,
          width: 5,
                       )
                    ),
                    child: Text("Order Received",style: TextStyle( fontSize:15 ),
                    
                    ),
      
                  ),
                  SizedBox(height: 15,),
                  Text("Order ID # 293092309"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("images/Logo.png",width: 150, height: 200,color: Colors.green,),
                  Container(
        height: 50,
        width: 450,
        child:   ElevatedButton(onPressed: (){


           
        }, style:ElevatedButton.styleFrom( primary: Colors.green, shape: RoundedRectangleBorder(
        
          borderRadius: BorderRadius.circular(50),
        
          
        
          
        
          
        
        )) , child: Text("Thank you")),
      )
      
                ],
              ),
              
              
            ),
          ],
        ),
      ),
    );
  }
}