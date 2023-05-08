import 'package:flutter/material.dart';
import 'package:freedom_fighters/qoutes.dart';
import 'package:freedom_fighters/typer.dart';
import 'package:freedom_fighters/web_page.dart';

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
        physics: const PageScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://img.freepik.com/premium-vector/african-ethnic-tribal-clash-ornament-seamless-pattern-background-simple-lines-triangles_499817-1131.jpg?w=740"),
                  fit: BoxFit.cover
              )
          ),
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
                    child: typer(jk),
                  ),


                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(153, 0, 0, 1),),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const WebPage(
                                  title: "Julius Nyerere",
                                  selectedUrl: "https://en.wikipedia.org/wiki/Julius_Nyerere")
                          )
                      );
                      },
                    child: const Text("Biography")),
              )
            ],
          ),
        ),
          Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://img.freepik.com/premium-vector/african-ethnic-tribal-clash-ornament-seamless-pattern-background-simple-lines-triangles_499817-1131.jpg?w=740"),
                  fit: BoxFit.cover
              )
          ),
            padding: const EdgeInsets.fromLTRB(2, 0, 10, 0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://hips.hearstapps.com/hmg-prod/images/_photo-by-per-anders-petterssongetty-images.jpg",
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
                    child: typer(nm),
                  ),


                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(153, 0, 0, 1),),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const WebPage(
                                  title: "Nelson Mandela",
                                  selectedUrl: "https://en.wikipedia.org/wiki/Nelson_Mandela")
                          )
                      );
                      },
                    child: const Text("Biography")),
              )
            ],
          ),
        ),
        ]
      ),
    );
  }
}