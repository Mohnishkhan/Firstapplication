import 'package:firstapp/newUi/enterpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myLogin extends StatelessWidget {
  const myLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[

                  CircleAvatar(
                    radius: 40,
                    child: Image.asset("assets/boy.jpg",fit:BoxFit.cover,height: 50,)

                  ),
                  Container(
                  child: Text(
                    'Hey,Justin',style: TextStyle(color: Colors.red.shade200,fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:130,right: 35,left: 35),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },

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
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.blue.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                    ),

                    SizedBox(
                      height: 300,
                    ),
                    Container(
                      width: 30,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>enterpage()));},

                        child:Text("Click Me",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,decoration:TextDecoration.underline),


                        ),

                      ),
                    ),
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
