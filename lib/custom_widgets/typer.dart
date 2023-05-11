import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget typer(String quote){
  dynamic text = quote;
  return SizedBox(
    width: 300.0,
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
          isRepeatingAnimation: true,
          animatedTexts: [
            TyperAnimatedText(
                text,
                speed: const Duration(milliseconds: 100)),
          ]
      ),
    ),
  );
}
