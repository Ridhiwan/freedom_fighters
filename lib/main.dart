import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
   runApp(
       MaterialApp(
         title: 'Freedom Fighters',
         theme: ThemeData(
           primarySwatch: Colors.blue,
         ),
         home: const StartPage(),
       ),
   );
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            side: BorderSide(
              width: 5,
              strokeAlign: BorderSide.strokeAlignOutside
            )
        ),
        title: const Text("Africa's Freedom Fighters", textAlign: TextAlign.justify,),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(153, 102, 0, 1),
                  Color.fromRGBO(153, 0, 0, 1),
                  Color.fromRGBO(0, 102, 0, 1),])
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://img.freepik.com/premium-vector/african-ethnic-tribal-clash-ornament-seamless-pattern-background-simple-lines-triangles_499817-1131.jpg?w=740"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYdZWf64BYWN6HFVqN6Pa7IbsiQkgwO_0AKA&usqp=CAU",
                width: 300,
                height: 300,
                fit: BoxFit.cover,),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height: 360.0,
                width: 380.0,
                child: Center(
                  child: _typer(),
                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(153, 0, 0, 1),),
                  onPressed: () {},
                  child: const Text("Biography")),
            )
          ],
        ),
      ),
    );
  }
}

Widget _typer(){
  return SizedBox(
    width: 250.0,
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
          isRepeatingAnimation: true,
          animatedTexts: [
            TyperAnimatedText(
                "Cooperation and conflict are two sides of the same coin;"
                " both arise out of man's relationship with his fellows."
                " The larger the group, the greater the possibility of development through cooperation,"
                " and the greater the possibility of conflict.\n"
                "  - Julius K. Nyerere"

                ,speed: const Duration(milliseconds: 100)),
          ]
      ),
    ),
  );
}


