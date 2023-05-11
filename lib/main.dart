import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:freedom_fighters/pages/front_page.dart';

void main() {
   runApp(
       MaterialApp(
         title: 'Freedom Fighters',
         theme: ThemeData(
           primarySwatch: Colors.blue,
           visualDensity: VisualDensity.adaptivePlatformDensity,
         ),
         home: AnimatedSplashScreen(
           duration: 6000,
           splash: Container(
             color: Colors.black,
             child: Stack(
               children: [
                 Positioned.fill(
                     child: Image.asset('assets/images/background_image.jpg',
                       fit: BoxFit.cover, 
                     opacity: const AlwaysStoppedAnimation(0.6),)
                 ),
                 SizedBox(
                   child: DefaultTextStyle(
                       style: const TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                       ),
                       child: Center(
                         child: AnimatedTextKit(
                           repeatForever: true,
                           animatedTexts: [
                             FadeAnimatedText("Celebrating",
                             duration: const Duration(seconds: 3),
                                 fadeOutBegin: 0.9,fadeInEnd: 0.7),
                             FadeAnimatedText("Our Heroes!",
                                 duration: const Duration(seconds: 3),
                                 fadeOutBegin: 0.9,fadeInEnd: 0.7)
                           ],
                         ),
                       )
                   ),
                 )
               ],
             ),
           ),
             splashIconSize: double.infinity,
             nextScreen: const FrontPage(),
             splashTransition: SplashTransition.fadeTransition,
             backgroundColor: Colors.black
         ),
       ),
   );
}





