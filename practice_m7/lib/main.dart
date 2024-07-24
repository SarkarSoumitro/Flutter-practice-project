

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main(){
  runApp(practice1());
}

class practice1 extends StatelessWidget {
  const practice1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice1(),
    );
  }
}
class Practice1 extends StatelessWidget {


  //My snackbar for a message shown

  MySnackBar(Message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(Message))
    );
  }


  var MyItems =[
    {
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },
    {
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },{
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title":"Rabbil"
    },
  ];

  mySnackbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 8, child:
      
      Scaffold(
      appBar: AppBar(
        title: Text("soumitro"),
        backgroundColor: Colors.deepOrangeAccent,
        titleSpacing: 20,
        toolbarHeight: 55,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am balance", context);}, icon: Icon(Icons.balance)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: Icon(Icons.accessibility_outlined),
        onPressed: (){
          MySnackBar("I am floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home" ),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
        onTap: (int index){
          if(index== 0){
            MySnackBar("I am home button menu", context);
          }
          if(index==1){
            MySnackBar("I am contact button", context);
          }
          else{
            MySnackBar("I am profile button", context);
          }
        },
      ),
      drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(currentAccountPicture: Image.network("https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo-thumbnail.png"),decoration: BoxDecoration(color: Colors.blueGrey), accountEmail:Text("soumitrosarkar@gmail.com"),accountName: Text("Soumitro Sarkar"),
                )
            ),
            ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: (){
              MySnackBar("I am home", context);
            },),
            ListTile(leading: Icon(Icons.contact_emergency),title: Text("Contact"),onTap: (){
              MySnackBar("I am contact", context);
            },),
            ListTile(leading: Icon(Icons.person),title: Text("Person"),onTap: (){
              MySnackBar("I am person", context);
            },),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),onTap: (){
              MySnackBar("I am email", context);
            },)
          ],
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(29),
          child: Column(
            children: [
              Image.network('https://placeimg.com/640/480/tech',fit: BoxFit.cover,height: 144,),
              Padding(
                padding: EdgeInsets.all(23),
                child: Text("welcome to my app",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                ),
              ),
              Text("'This is a full-body description of the app. It can contain multiple paragraphs, links, and other elements to inform users about the app\'s purpose and features. You can use RichText for further styling options.",style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18),),
              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("I am at work")));
              }, child: Text("Button pressed"),),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  Text("Hi I am soumitro"),
                  ElevatedButton(onPressed: (){}, child: Text("Click here")),
                  IconButton(onPressed: (){}, icon: Icon(Icons.accessibility)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hi I am soumitro",style: TextStyle(fontSize: 12,decoration: TextDecoration.underline,overflow: TextOverflow.ellipsis),),
                      Text("Hi I am soumitro"),
                      Column(
                        children: [
                          Text("Hi I am soumitro"),
                          Text("Hi I am soumitro"),
                          Text("Hi I am soumitro"),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [

                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Center(child: Text("Box",style: TextStyle(color: Colors.red))),
                  ),
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("Box",style: TextStyle(color: Colors.red),))
                  ),
                  Container()
                ],
              )
            ],
          ),
        ),
      ),
      )
    );
  }
}

