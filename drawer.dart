import 'main.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'createaccount.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.lightBlueAccent,
            height: 50,
          ),
          Padding(padding: EdgeInsets.only(left: 30,top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              ClipRRect(
                borderRadius:BorderRadius.circular(110.0),
                child:Image.asset('assets/image.jpg',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(padding: EdgeInsets.only(right:20)),
              Text("Mohnish khan",style: TextStyle(
                  fontSize: 26,fontStyle:FontStyle.italic,
                  fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),)
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Divider(
            height: 40,
            color: Colors.lightBlueAccent,
          ),
          SizedBox(
            height: 50,
          ),

          Expanded(

            child: ListView(
              children: <Widget>[
                ListTile(
                  leading:Icon(Icons.email,),
                  title: Text("Email",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                ),
                ListTile(
                  leading:Icon(Icons.contact_phone,),
                  title: Text("Contact",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),

                  ),
                ),
                ListTile(
                  leading:Icon(Icons.map),
                  title: Text("map",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }
}
