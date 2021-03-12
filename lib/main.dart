import 'package:flutter/material.dart';
import 'Components/RoundedButton.dart';
import 'package:fltestconstructor/QuestionConstuctor.dart';
import 'Components/TextFieldContainer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Название теста',
            ),
            TextFieldContainer(
              child:  TextField(textAlign: TextAlign.center)),
            RoundedButton(
              text: "Continue",
              press: () {
                Navigator.push(context,
                              MaterialPageRoute(builder: (context) => 
                                QuestionConstructor()
                              ));
              },
            )
          ],
        ),
      ),
    );
  }
}
