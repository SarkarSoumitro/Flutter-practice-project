import 'package:flutter/material.dart';
import 'package:stateful_sum_app_module_13/style.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map<String, double> formvalue = {"num1": 0, "num2": 0, "num3": 0};
  double sum = 0;
  @override
  Widget build(BuildContext context) {
    MyInputchang(inputkey, inputvlaue) {
      setState(() {
        formvalue.update(inputkey, (value) => double.parse(inputvlaue));
      });
    }

    Addnumber() {
      setState(() {
        sum = formvalue['num1']! + formvalue['num2']! + formvalue['num3']!;
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        title: Text(
          "S U M  A P P",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              //number total sum will be shown
              Text(sum.toString(), style: Headerstyle()),

              //first textfield
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  MyInputchang("num1", value);
                },
                decoration: AppinputStyle('First number'),
              ),
              const SizedBox(
                height: 20,
              ),

              // second textfield
              TextField(
                onChanged: (value) {
                  MyInputchang("num2", value);
                },
                decoration: AppinputStyle('Second number'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  MyInputchang("num3", value);
                },
                decoration: AppinputStyle('Second number'),
              ),
              const SizedBox(
                height: 20,
              ),

              //a add button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: addbuttonstyle(),
                    onPressed: () {
                      Addnumber();
                    },
                    child: Text("Add")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
