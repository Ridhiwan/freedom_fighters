import 'package:flutter/material.dart';
import 'package:freedom_fighters/typer.dart';
import 'web_page.dart';

class Introducer extends StatefulWidget {
  const Introducer({Key? key,
    required this.quote,
    required this.title,
    required this.url,
    required this.imagePath}) : super(key: key);

  final String title;
  final String quote;
  final String url;
  final String imagePath;

  @override
  State<Introducer> createState() => _IntroducerState();
}

class _IntroducerState extends State<Introducer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/front_page_bg.png"),
              fit: BoxFit.cover
          )
      ),
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagePath,
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
                child: typer(widget.quote),
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
                          builder: (context) => WebPage(
                              title: widget.title,
                              selectedUrl: widget.url)
                      )
                  );
                },
                child: const Text("Biography")),
          )
        ],
      ),
    );
  }
}


// Widget introducer(String quote,String title, String url, String imagePath){
//   dynamic text = quote;
//   dynamic name = title;
//   dynamic wiki = url;
//   dynamic path = imagePath;
//   return Container(
//     decoration: const BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage("assets/images/front_page_bg.png"),
//             fit: BoxFit.cover
//         )
//     ),
//     padding: const EdgeInsets.fromLTRB(2, 0, 10, 0),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(path,
//           width: 300,
//           height: 300,
//           fit: BoxFit.cover,),
//         Center(
//           child: Container(
//             decoration: const BoxDecoration(
//                 color: Colors.black,
//                 shape: BoxShape.rectangle,
//                 borderRadius: BorderRadius.all(Radius.circular(20))
//             ),
//             height: 360.0,
//             width: 380.0,
//             child: Center(
//               child: typer(text),
//             ),
//
//
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromRGBO(153, 0, 0, 1),),
//               onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(
//                         builder: (context) => WebPage(
//                             title: name,
//                             selectedUrl: wiki)
//                     )
//                 );
//               },
//               child: const Text("Biography")),
//         )
//       ],
//     ),
//   );
// }