import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart';

import 'model/postmodel.dart';

class myjson extends StatefulWidget {
  const myjson({Key? key}) : super(key: key);

  @override
  State<myjson> createState() => _myjsonState();


}

class _myjsonState extends State<myjson> {




Future<List<Postmodel>> getPostApi ()async{
  List<Postmodel> postList=[];
  final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  var data=jsonDecode(response.body.toString());


  if(response.statusCode==200) {
    for (Map i in data) {
      postList.add(Postmodel.fromJson(i));
    }
    return postList;
  }
  else {
    return postList;
  }
  }



  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("myjson"),
      ),

      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Postmodel>>(
              future:  getPostApi(),
            builder:(
            context,snapshot){
              var list = snapshot.data ?? [];
              if(!snapshot.hasData){
                return Text("Loading");
    }
              else{
                return ListView.builder(
                itemCount: list.length,
                itemBuilder:(context,index){
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].id.toString()),
                         // Text(list[index].userId.toString()),
                          Text(list[index].body.toString()),

                        ],
                      ),
                    ),
                  );
    });
    }

    }
            ),
          ),
          
        ],
      ),
    );
  }
}
