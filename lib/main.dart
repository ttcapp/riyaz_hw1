import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}
String image1= "https://upload.wikimedia.org/wikipedia/commons/9/94/William_%22Mo%22_Cowan.jpg";
bool isvisible=false;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text("My First App",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
        ),

        body: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(5),
                      child: Image.network(image1),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(10),
                      child: Image.network(image1),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(10),
                      child: Image.network(image1),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(10),
                      child: Image.network(image1),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(10),
                      child: Image.network(image1),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(10),
                      child: Image.network(image1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      isvisible=true;
                    });
                  }, 
                  child: Text("Show Image")),
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isvisible,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  height: 200,
                  width: 200,
                  child: Image.network(image1,fit: BoxFit.fitHeight),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}

