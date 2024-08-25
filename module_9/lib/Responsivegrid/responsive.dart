import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive grid"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.deepOrange,
              )),
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.blue,
              )),
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.red,
              )),
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              )),
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.grey,
              )),
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.orange,
              )),
          ResponsiveGridCol(
              lg: 5,
              xl: 4,
              md: 8,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.deepOrange,
              )),
        ]),
      ),
    );
  }
}
