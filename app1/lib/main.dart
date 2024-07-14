import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp()); // Application
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green) ,
        darkTheme: ThemeData(primarySwatch:Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home:HomeActivity()
    );

  }
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});



  MySnackBar(Message ,context){
    ScaffoldMessenger.of(context).showSnackBar(   //it is kind of pop up dialog where a message will be shown for a particular action
      SnackBar(content: Text(Message))
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.amber,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am Comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I am emails", context);}, icon: Icon(Icons.email)),

        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: Icon(Icons.accessibility_outlined),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("I am floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("I am home bottom menu", context);
          }
          if(index==1){
            MySnackBar("I am contact bottom menu", context);

          }
          if(index==2){
            MySnackBar("I am profile bottom menu", context);

          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Soumitro"),
              accountEmail: Text("infosoumitro.gmail"),
                  currentAccountPicture: Image.network("https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo-thumbnail.png"),

            )),
            ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: ()
            {
              MySnackBar("I am Home", context);
              },),
            ListTile(leading: Icon(Icons.contact_emergency),title: Text("Contact"),onTap: ()
            {
              MySnackBar("I am contact", context);
            }),
            ListTile(leading: Icon(Icons.person),title: Text("Profile"),onTap: ()
            {
              MySnackBar("I am Profile", context);
            }),
            ListTile(leading: Icon(Icons.email),title: Text("Email"),onTap: ()
            {
              MySnackBar("I am email", context);
            }),
            ListTile(leading: Icon(Icons.phone),title: Text("Phone"),onTap: ()
            {
              MySnackBar("I am phone", context);
            }),

        ],
        ),
      ),

    );

  }



}