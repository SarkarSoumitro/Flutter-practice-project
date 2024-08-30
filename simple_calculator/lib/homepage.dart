import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _result = 0;
  final TextEditingController _firstnumbercontroller = TextEditingController();
  final TextEditingController _secondnumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("C A L C U L A T O R"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: _firstnumbercontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _secondnumbercontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: _ontabaddbutton,
                    icon: Icon(Icons.add, size: 40)),
                IconButton(
                    onPressed: _ontabsubtractbutton,
                    icon: Icon(
                      Icons.remove,
                      size: 40,
                    )),
                TextButton(
                    onPressed: _ontabdevidebutton,
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    )),
                TextButton(
                    onPressed: _ontabmultiplybutton,
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Result: ${_result.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _ontabaddbutton() {
    if (_validTextfield() == false) {
      return;
    }
    double firstnumb = double.tryParse(_firstnumbercontroller.text) ?? 0;
    double secondnumb = double.tryParse(_secondnumbercontroller.text) ?? 0;
    _result = firstnumb + secondnumb;
    setState(() {});
  }

  void _ontabsubtractbutton() {
    if (_validTextfield() == false) {
      return;
    }

    double firstnumb = double.tryParse(_firstnumbercontroller.text) ?? 0;
    double secondnumb = double.tryParse(_secondnumbercontroller.text) ?? 0;
    _result = firstnumb - secondnumb;
    setState(() {});
  }

  void _ontabdevidebutton() {
    if (_validTextfield() == false) {
      return;
    }
    double firstnumb = double.tryParse(_firstnumbercontroller.text) ?? 0;
    double secondnumb = double.tryParse(_secondnumbercontroller.text) ?? 0;
    _result = firstnumb / secondnumb;
    setState(() {});
  }

  void _ontabmultiplybutton() {
    if (_validTextfield() == false) {
      return;
    }
    double firstnumb = double.tryParse(_firstnumbercontroller.text) ?? 0;
    double secondnumb = double.tryParse(_secondnumbercontroller.text) ?? 0;
    _result = firstnumb * secondnumb;
    setState(() {});
  }

  bool _validTextfield() {
    if (_firstnumbercontroller.text.isEmpty) {
      return false;
    } else if (_secondnumbercontroller.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
