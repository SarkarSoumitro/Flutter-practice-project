import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _glassnumberTEcontroller =
      TextEditingController(text: "1");

  List<Watertrack> waterTracklist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water tracker"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildWatertrackCounter(),
          const SizedBox(
            height: 24,
          ),
          Expanded(child: _buildwatertracklistview()),
        ],
      ),
    );
  }

  Widget _buildwatertracklistview() {
    return ListView.separated(
        itemCount: waterTracklist.length,
        itemBuilder: (context, index) {
          final Watertrack watertrack = waterTracklist[index];
          return ListTile(
              title: Text(
                  '${watertrack.dateTime.hour}:${watertrack.dateTime.minute}'),
              subtitle: Text(
                  '${watertrack.dateTime.day}/${watertrack.dateTime.month}/${watertrack.dateTime.year}'),
              leading: CircleAvatar(child: Text('${watertrack.noOfGlasses}')),
              trailing: IconButton(
                  onPressed: () => _ontabdeletebutton(index),
                  icon: Icon(Icons.delete)));
        },
        separatorBuilder: (context, index) {
          return Divider();
        });
  }

  Widget _buildWatertrackCounter() {
    return Column(
      children: [
        Text(
          getTotalGlasscount().toString(),
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "Glass/s",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _glassnumberTEcontroller,
                  textAlign: TextAlign.center,
                )),
            TextButton(
                onPressed: _addnewWatertrack,
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ],
    );
  }

  int getTotalGlasscount() {
    int counter = 0;
    for (Watertrack t in waterTracklist) {
      counter += t.noOfGlasses;
    }
    return counter;
  }

  void _addnewWatertrack() {
    if (_glassnumberTEcontroller.text.isEmpty) {
      _glassnumberTEcontroller.text = "1";
    }
    final int numberofglasses =
        int.tryParse(_glassnumberTEcontroller.text) ?? 1;
    Watertrack watertrack = Watertrack(numberofglasses, DateTime.now());
    waterTracklist.add(watertrack);
    setState(() {});
  }

  void _ontabdeletebutton(int index) {
    waterTracklist.removeAt(index);
    setState(() {});
  }
}

class Watertrack {
  final int noOfGlasses;
  final DateTime dateTime;

  Watertrack(this.noOfGlasses, this.dateTime);
}
