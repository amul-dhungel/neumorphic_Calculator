

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'home.dart';
import 'darkhome.dart';

void main() {
  runApp(MaterialApp(

    routes: {
      '/': (context) => Home(),
      '/darkHome': (context) => DarkHome(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
  
