import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flush Bar"),
      ),
      body: Center(
            child: ElevatedButton(
              child: Text("Showe Flush Bar"),
              onPressed: (){
                Flushbar(
                  title: "Flush bar",
                  messageText: Text("This is flush bar",style: TextStyle(color: Colors.amber),),
                  icon: Icon(Icons.grade,color: Colors.amber,),
                  backgroundColor: Colors.blue,
                  mainButton: FlatButton(
                    child: Text("close"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  // flushbarPosition: FlushbarPosition.TOP,
                  // duration: Duration(seconds: 5),
                ).show(context);
              },
            ),
      ),
    );
  }
}
