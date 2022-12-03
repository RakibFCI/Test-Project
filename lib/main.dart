import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isChack = true;
  double height = 200;
  double width = 200;

  int price = 900;

  @override
  Widget build(BuildContext context) {

    final TextStyle styletext = TextStyle(fontWeight: FontWeight.bold, color: Colors.white);
    final String? tex = "Hi ";
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: "Price", style: TextStyle(color: Colors.black , fontSize: 18),
                children: <TextSpan>[
                  TextSpan(text: " 900Tk ", style: TextStyle( fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                  )),
                  TextSpan(text: "700Tk", style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold,)),
                ]
              ),
            )
          ),
          SizedBox(
            height: 320,
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: isChack ? 100 : height ,
                  width: isChack ? 100 : width,
                  color: isChack ? Colors.blue : Colors.red,


                ),
              ],
            ),
          ),


          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState((){
                isChack = !isChack;

              });
            },

            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: 70,
              child: Text("Click",style: TextStyle(color: Colors.white),),
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),

      // body: Column(
      //   children: [
      //     Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(20),
      //           child: Container(
      //             height: 400,
      //             width: MediaQuery.of(context).size.width,
      //             child: isChack ? Image.network("https://m.media-amazon.com/images/I/71f0YCwN3sL.jpg"): Image.network("https://static-01.daraz.com.bd/p/mdc/462f706e857a11289f38c72aad7eb88f.jpg"),
      //           ),
      //         ),
      //       ],
      //     ),
      //
      //     Text("Price : $price", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
      //     SizedBox(height: 30,),
      //
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         InkWell(
      //           onTap: () {
      //             setState((){
      //               isChack = true;
      //               price = 900;
      //             });
      //           },
      //
      //           child: Container(
      //             alignment: Alignment.center,
      //             height: 50,
      //             width: 100,
      //             color: Colors.blue,
      //             child: Text("Preview", style: styletext)
      //           ),
      //         ),
      //         SizedBox(width: 20),
      //         InkWell(
      //           onTap: () {
      //             setState((){
      //               isChack = false;
      //               price = 200;
      //             });
      //           },
      //           child: Container(
      //               alignment: Alignment.center,
      //               height: 50,
      //               width: 100,
      //               color: Colors.blue,
      //               child: Text("Next", style: styletext,)
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

    );
  }
}
