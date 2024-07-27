

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Glow extends StatelessWidget {
  const Glow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Center(
        child: AvatarGlow(
          child: Icon(Icons.menu,color: Colors.white),
          glowColor: Colors.grey,
        ),
      ),
    );
  }
}
