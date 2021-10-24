import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text("My First App",
          style: TextStyle(
              fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),

        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("Button One")),
                SizedBox(
                  height: 15,
                ),
                Image.network("https://media.contentapi.ea.com/content/dam/gin/images/2021/07/fifa22-key-art.jpg.adapt.crop1x1.767p.jpg")



              ],
            ),
          ),
        ),
      ),
    );
  }
}
