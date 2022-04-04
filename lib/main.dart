import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Posttest 1 - Filbert Felix Tanto",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0, 0, 0, 128),
                  Color.fromARGB(0, 0, 0, 255),
                  Colors.black
                ]),
            border: Border.all(
              width: 8,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: RadialGradient(
              radius: 2.0, colors: [Colors.blue, Colors.green, Colors.teal]),
          border: Border(
            bottom: BorderSide(width: 8, color: Colors.black),
            left: BorderSide(width: 8, color: Colors.black),
            right: BorderSide(width: 8, color: Colors.black),
          ),
        ),
        child: const Text(
          "Hello Filbert \n\n~ It's okay to not be okay ~",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
