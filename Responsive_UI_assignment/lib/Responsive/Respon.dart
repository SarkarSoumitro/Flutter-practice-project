import 'package:flutter/cupertino.dart';

import '../Pages/Desktop/Desktop.dart';
import '../Pages/Mobile/Mobile.dart';
import '../Pages/Tablet/Tablet.dart';

class respons extends StatelessWidget {
  const respons({super.key});
  respon(context) {
    var width = MediaQuery.of(context).size.width;
    if (width <= 640) {
      return MobileHomepage();
    } else if (width <= 1008) {
      return Tablet();
    } else {
      return Laptop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return respon(context);
  }
}
