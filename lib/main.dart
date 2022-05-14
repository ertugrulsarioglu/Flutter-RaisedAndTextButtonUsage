import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text("Elevated Button",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)), //buttonun köşelerini ovalleştirdik
                  side: BorderSide(color: Colors.red), //buttona çerçeve ve çerçeve rengi ekledik
                ),
              ),
              onPressed: (){
                print("Elevated Button Tıklandı");
              },
            ),
            TextButton(
              child: Text("Text Button",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)), //buttonun köşelerini ovalleştirdik
                  side: BorderSide(color: Colors.red), //buttona çerçeve ve çerçeve rengi ekledik
                ),
              ),
              onPressed: (){
                print("Text Button Tıklandı");
              },
            ),
          ],
        ),
      ),

    );
  }
}
