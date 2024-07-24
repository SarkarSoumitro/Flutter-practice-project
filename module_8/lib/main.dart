import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:module_8/Fragment/AlarmFragment.dart';
import 'package:module_8/Fragment/BalanceFragment.dart';
import 'package:module_8/Fragment/ContactFragment.dart';
import 'package:module_8/Fragment/EmailFragment.dart';
import 'package:module_8/Fragment/HomeFragment.dart';
import 'package:module_8/Fragment/PersonFragment.dart';
import 'package:module_8/Fragment/SearchFragment.dart';
import 'package:module_8/Fragment/SettingsFragment.dart';

main() {
  runApp(const intro());
}

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: AlerDialogs(),
      //home: Form(),
      //home: Listview(),
      //home: gridview(),
      //home: Tabbar(),
      //home: NaviGation(),
      // home: cards(),
      // home: circrlarProgress(),
      //home: Iconclass(),
      home: gridview(),
    );
  }
}

//learning body

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 5),
        ),
        child: Image.network("https://rabbil.com/files/rabbilVai.png"),
      ),
    );
  }
}

//learning row

class HomeActivity1 extends StatelessWidget {
  const HomeActivity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory app row"),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
        ],
      ),
    );
  }
}

//flutter button
//Elevated , text , outline buttons

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  MySnacbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    //style for buttons
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Inventory app"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                MySnacbar("I am text button", context);
              },
              child: Text("Text button")),
          ElevatedButton(
            onPressed: () {
              MySnacbar("I am elevated button", context);
            },
            child: Text("Elevated button"),
            style: buttonStyle,
          ),
          OutlinedButton(
              onPressed: () {
                MySnacbar("Hi there i am text button", context);
              },
              child: Text("Text button"))
        ],
      ),
    );
  }
}

//alert dialog

class AlerDialogs extends StatelessWidget {
  const AlerDialogs({super.key});

  MysnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Alert !"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(
                  onPressed: () {
                    MysnackBar("Delete context success", context);
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No"))
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog "),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("click me"),
          onPressed: () {
            MyAlertDialog(context);
          },
        ),
      ),
    );
  }
}

//simple form learning

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        textStyle: TextStyle(fontSize: 20));

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'First Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Last Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nick Name'),
            ),
          ),
          // Add a new row with padding for the button

          Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
                style: buttonStyle,
              )),
        ],
      ),
    );
  }
}

//ListView

//step :01 JSON Array
//step :02 List View Builder
//step :03 Gesture Detector
//step :04 List item
//step :05 List item on the tap

class Listview extends StatelessWidget {
  var MyItems = [
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
  ];

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview"),
          backgroundColor: Colors.amberAccent,
        ),
        body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                mySnackBar(context, MyItems[index]['title']);
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 220,
                  child:
                      Image.network(MyItems[index]['img']!, fit: BoxFit.fill)),
            );
          },
        ));
  }
}

//Gridview

//step :01 JSON Array
//step :02 Grid View Builder
//step :03 Gesture Detector
//step :04 Grid item
//step :05 Grid item on the tap

class gridview extends StatelessWidget {
  gridview({super.key});

  var MyItems = [
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
      "title": "Rabbil"
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg/330px-Shah_Rukh_Khan_%26_Kajol_unveil_the_special_coffee_table_book_%27DDLJ%27.jpg",
      "title": "Rupom"
    },
  ];

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview"),
          backgroundColor: Colors.amberAccent,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, childAspectRatio: 1.2),
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onDoubleTap: () {
                mySnackBar(context, MyItems[index]['title']);
              },
              child: Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  height: 220,
                  child:
                      Image.network(MyItems[index]['img']!, fit: BoxFit.fill)),
            );
          },
        ));
  }
}

//Tapbar

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            backgroundColor: Colors.lightGreen,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "search",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "settings",
                ),
                Tab(
                  icon: Icon(Icons.email),
                  text: "email",
                ),
                Tab(
                  icon: Icon(Icons.contact_mail),
                  text: "mails",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "person",
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                  text: "alarm",
                ),
                Tab(
                  icon: Icon(Icons.account_balance),
                  text: "balance",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Homefragment(),
              Searchfragment(),
              Settingsfragment(),
              Emailfragment(),
              Contactfragment(),
              Personfragment(),
              Alarmfragment(),
              Balancefragment()
            ],
          ),
        ));
  }
}

// Navigation (One page to another page)

class NaviGation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation bar Activity 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Activity1("This is from home to activity 1")));
              },
              child: Text("Activity 1")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Activity2("This is from home to activity 2")));
              },
              child: Text("Activity 2"))
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  String msg;

  Activity1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Activity2("This is from activity 1 to activity 2")));
          },
          child: Text("go activity 2"),
        ),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  String msg;

  Activity2(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Activity1("This is from activity 2 to activity 1")));
          },
          child: Text("go activity 1"),
        ),
      ),
    );
  }
}

//Cards

class cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          shadowColor: Colors.black,
          color: Colors.blueGrey,
          elevation: 80,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is card"),
            ),
          ),
        ),
      ),
    );
  }
}

//circrlarProgress indicator

class circrlarProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("circular progress indicator"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 5,
        ),
      ),
    );
  }
}

//icons class

class Iconclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons class"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Icon(
          Icons.camera_alt,
          size: 200,
          color: Colors.green,
        ),
      ),
    );
  }
}
