

 import 'package:flutter/material.dart';
import 'package:task/screen/signin.dart';
 class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

        body: SingleChildScrollView(
          child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xff0D986A),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
        
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Image.asset("images/Logo.png",width: 200,),
                    SizedBox(height: 20,),
                    Text("PLANTIFY",style: TextStyle(color:Color(0xffFFFFFF),fontSize: 50),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            ListTile(
              title: Text("GET READY\nBE HYGEINIC",style: TextStyle(fontSize: 26,color: Color(0xff0D986A)),),
              subtitle: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",style: TextStyle(fontSize: 14,color: Color(0xff0D986A)),)
                ],
              ),
            ),
        
             SizedBox(height: 30,),
             ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color(0xff0D986A),
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 200)),
                child: const Text(
                  'MASUK',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
          ]),
        )
      
    );
  }
}
