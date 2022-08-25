import 'dart:convert';


import 'package:firstapp/json.dart';
import 'package:firstapp/TextfieldDAta.dart';
import 'package:flutter/cupertino.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'json.dart';


class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController _name= new TextEditingController();
  TextEditingController _email= new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/4.jpg"),fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
appBar: AppBar(
  backgroundColor: Colors.red.shade200,

),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding:EdgeInsets.only(left: 35,top:40),
              child: Text(
                'Create Account',style: TextStyle(color: Colors.red.shade200,fontSize: 30,fontWeight: FontWeight.bold),
              ),

            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:130,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        fillColor: Colors.blue.shade100,
                        filled: true,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _email,
                      obscureText: true,
                      decoration: InputDecoration(

                        hintText: 'Email',
                        fillColor: Colors.blue.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _password,

                      decoration: InputDecoration(

                        hintText: 'Password',
                        fillColor: Colors.blue.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),),
                    SizedBox(
                        height:20
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(

                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color:Colors.white,
                            onPressed: (){
                              // namesList
                              /// add name in list

                              namesList2.add(Mapmodel(name:_name.text,email: _email.text,pass:_password.text));
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>TextfieldData(name: _name.text, email: _email.text, password: _password.text)));
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color:Colors.white,
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>myjson()));
                            },
                            icon: Icon(Icons.done),
                          ),
                        ),


                      ],

                    ),
                    SizedBox(
                        height:20
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){

                        },
                          child:Text("Sign Up",style: TextStyle(color: Colors.red.shade300,fontSize: 20,fontWeight: FontWeight.bold,decoration:TextDecoration.underline),
                          ),

                        ),
                        TextButton(onPressed: (){

                        },
                          child:Text("forgot password",style: TextStyle(color: Colors.red.shade300,fontSize: 20,fontWeight: FontWeight.bold,decoration:TextDecoration.underline),
                          ),

                        ),
                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
