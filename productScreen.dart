import 'package:firstapp/controller/productController.dart';
import 'package:firstapp/dummymodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import 'package:firstapp/dummymodel.dart';

import '../dummymodel.dart';



class ProductScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     final mymodel=Provider.of<dummymodel>(context);
    final newmodel=Provider.of<Newmodel>(context);
return SafeArea(
  child:   Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
 Text(
     mymodel.title,
      style: TextStyle(fontSize: 30),

    ),
        ElevatedButton(onPressed: (){
                mymodel.changeValue();
              }, child: Text("change"),

          ),
          Divider(height: 20),

           Text(
              newmodel.a.toString(),
              style: TextStyle(fontSize: 30),
            ),


          ElevatedButton(onPressed: (){
            newmodel.chngeInt();
          }, child: Text("Increase"),),
    ]
      ),
    ),
  ),
);
      

  }
}
