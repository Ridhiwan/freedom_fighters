import 'package:flutter/material.dart';
import 'package:freedom_fighters/custom_widgets/introducer.dart';
import 'package:freedom_fighters/data/qoutes.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          Introducer(
              quote: jk,
              title: "Julius Nyerere",
              url: "https://en.wikipedia.org/wiki/Julius_Nyerere",
              imagePath: "assets/images/Nyerere.jpg"
          ),
          Introducer(
              quote: nm,
              title: "Nelson Mandela",
              url: "https://en.wikipedia.org/wiki/Nelson_Mandela",
              imagePath: "assets/images/Mandela.jpg"
          ),
          Introducer(
              quote: kn,
              title: "Kwame Nkrumah",
              url: "https://en.wikipedia.org/wiki/Kwame_Nkrumah",
              imagePath: "assets/images/Nkrumah.jpg"
          ),
          Introducer(
              quote: jok,
              title: "Jomo Kenyatta",
              url: "https://en.wikipedia.org/wiki/Jomo_Kenyatta",
              imagePath: "assets/images/Kenyatta.jpg"
          ),
          Introducer(
              quote: ts,
              title: "Thomas Sankara",
              url: "https://en.wikipedia.org/wiki/Thomas_Sankara",
              imagePath: "assets/images/Sankara.jpg"
          ),
        ]
      ),
    );
  }
}