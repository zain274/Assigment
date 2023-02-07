import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:task/screen/login.dart';

class Signin extends StatelessWidget {
  Signin({super.key});


TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: username.text,
        password: password.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(255, 233, 231, 91),
      appBar: AppBar(
                backgroundColor:Color.fromRGBO(255, 253, 252, 0.639) ,

leading: InkWell(
  onTap: () {
    Navigator.of(context).pop(MaterialPageRoute(builder: (context) =>  Signin()));
  },
  child: Icon(Icons.arrow_back_ios_new_outlined, color: Color.fromRGBO(0, 78, 91, 1),)),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 25,),
                Image.asset("images/Logo.png",width: 100, height: 100),
                SizedBox(width: 25,),
                Text("Plantify",style:TextStyle(fontSize: 14 ,color: Colors.black),)
              ],
              
            ),
            SizedBox(height: 10,),
      ListTile(
        title: Text("Sign in",style: TextStyle(fontSize: 30 , color: Colors.red),
        
        ),
      
      subtitle: Text("Maskukan nis dan password untak  memulai belajor  sekarang"),
      ) ,
       SizedBox(height: 20,),
      ListTile(
        title: Text("Username/Email"),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: TextField(
        controller: username,
        obscureText: false,  
        
                        decoration: InputDecoration(  
                          border: OutlineInputBorder(),  
                          labelText: 'Email',  
                          hintText: 'Enter Email', 
                          prefixIcon:new Icon(Icons.person_rounded) 
                          
                        ),
                        
                        
          ),
          
        ),
        
      
        
        
      ),
      SizedBox(height: 20,),
      ListTile(
        title: Text("Password"),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: TextField(
        
         controller: password,
        obscureText: true,  
              
      
                        decoration: InputDecoration(  
                          border: OutlineInputBorder(),  
                          labelText: 'Password',  
                          hintText: 'Enter Password', 
                          prefixIcon:new Icon(Icons.person_rounded),
                         
                        )
                        
                        
          ),
          
          
        ),
        
        
      
        
        
      ),
      
      SizedBox(height: 30,),
       ElevatedButton(
                onPressed: () {
                   signup(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color(0xff0D986A),
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 200)),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
         ],
        ),
      ),
    );
  }
}