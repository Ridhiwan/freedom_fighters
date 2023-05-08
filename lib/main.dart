import 'package:flutter/material.dart';
import 'package:freedom_fighters/front_page.dart';

void main() {
   runApp(
       MaterialApp(
         title: 'Freedom Fighters',
         theme: ThemeData(
           primarySwatch: Colors.blue,
           visualDensity: VisualDensity.adaptivePlatformDensity,
         ),
         home: const FrontPage(),
       ),
   );
}





