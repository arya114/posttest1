import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:  'POSTEST 1',
      home: Home(),
      
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MediaQueryWidth = MediaQuery.of(context).size.width;
    var MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('POSTTEST 1'),
      ),
      body: Container(
          width: MediaQueryWidth / 2,
          height: MediaQueryHeight / 2,
          alignment: Alignment.center,
          decoration: BoxDecoration(
          gradient: const RadialGradient (
            radius: 0.5,
            colors: <Color>[
              Colors.green,
              Colors.red,
            ],
          ),
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child:const Text(
          "THIS IS TOMATO",
          style: TextStyle(
            shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 2,
              offset: Offset(2, 2),
            )
          ],
            fontSize: 20,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            wordSpacing: 3,
            fontFamily: "Roboto",
            height: 2),
        ),
      ),
    );
  }
}

