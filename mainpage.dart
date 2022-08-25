import 'package:firstapp/createaccount.dart';
import 'package:firstapp/TextfieldDAta.dart';
import 'package:firstapp/views/productScreen.dart';
import 'package:firstapp/views/productScreen.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'drawer.dart';
import 'TextfieldDAta.dart';


class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}


class _MyLoginPageState extends State<MyLoginPage> {

  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   changeButton=false;
    // });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login.jpg"),fit: BoxFit.cover,
        ),
      ),
child: Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white38,
  ),
  drawer: const MyDrawer(),
  backgroundColor: Colors.transparent,
  body: Stack(
    children: [
      Container(
        padding:EdgeInsets.only(left: 35,top:100),
        child: Text(
          'Welcome Back',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
        ),

      ),
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.4,right: 35,left: 35),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
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
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },

                obscureText: true,
                decoration: InputDecoration(
                hintText: 'password',
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
                  Text("Sign In",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                  ),


                 InkWell(
                   onTap: (){
                     setState(() {
                       changeButton =true;
                     });

                   },
                   child: AnimatedContainer(
                     duration: Duration(seconds: 1),
                     width: changeButton?50:120,
                     height: 40,


                     alignment: Alignment.center,
                     child: changeButton?Icon(Icons.done,color: Colors.white):Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                   decoration:BoxDecoration(
                     color: Colors.deepPurple,
                     borderRadius: BorderRadius.circular(changeButton?55:18),
                   ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegister()));
                  },
                      child:Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,decoration:TextDecoration.underline),
                      ),

                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));},

                    child:Text("Click Me",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,decoration:TextDecoration.underline),


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
