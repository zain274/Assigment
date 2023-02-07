import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/screen/Home.dart';
import 'package:task/screen/menu.dart';

class Login extends StatelessWidget {
  Login({super.key});

 var email="";
 var passwordd="";
 

TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();


  @override

  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: username.text,
    password: password.text
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 233, 231, 91),
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(255, 253, 252, 0.639) ,
leading: InkWell(
  onTap: () {
         Navigator.of(context).pop(MaterialPageRoute(builder: (context) =>  Login()));

  },
  child: Icon(Icons.arrow_back_ios_new_outlined, color: Color.fromRGBO(0, 78, 91, 1),)),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 35,),
                Image.asset("images/Logo.png",width: 30,height: 30),
                SizedBox(width: 25,),
                Text("Plantify",style:TextStyle(fontSize: 14 ,color: Colors.black),)
              ],
              
            ),
            SizedBox(height: 10,),
      ListTile(
        title: Text("login",style: TextStyle(fontSize: 30 , color: Colors.red),
        
        ),
      
      subtitle: Text("Maskukan nis dan password untak  memulai belajor  sekarang"),
      ) ,
       SizedBox(height: 20,),
      ListTile(
        title: Text("Username/Email"),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: TextField(
        
        obscureText: false,  
                controller: username,

                        decoration: InputDecoration(  
                          border: OutlineInputBorder(),  
                          labelText: 'Email',  
                          hintText: 'Enter Email', 
                          
                          prefixIcon:new Icon(Icons.lock_outline) 
                        )
                        
          ),
          
        ),
        
      
        
        
      ),
      SizedBox(height: 20,),
      ListTile(
        title: Text("Password"),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: TextField(
        
        obscureText: true,  
                controller: password,

                        decoration: InputDecoration(  
                          border: OutlineInputBorder(),  
                          labelText: 'Password',  
                          hintText: 'Enter Password', 
                          prefixIcon:new Icon(Icons.lock_outline),
                         
                        )
                        
                        
          ),
          
          
        ),
        
        
      
        
        
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
      
        InkWell(child: Column(
          children: [
        Text("Forget Password",style: TextStyle(color: Colors.blue),),
          ],
        ))
      ],),
      // Container(
      //   color: Colors.green,
      //   child: ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 212, 231, 213)),)))
      Container(
        height: 50,
        width: 450,
        child:    ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => menu(),));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color(0xff0D986A),
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 200)),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
      
      )
         ],
        ),
      ),
    );
  }
}