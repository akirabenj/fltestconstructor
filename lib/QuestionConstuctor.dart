import 'package:fltestconstructor/Components/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'Components/TextFieldContainer.dart';

class QuestionConstructor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page(title: 'Flutter Demo Home Page'),
    );
  }
}

class Page extends StatefulWidget {
  Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  List<bool> _checkboxValues = [false, false, false, false];
  ButtonStyle setStyleWith(Color color) => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Текст вопроса',
            ),
            TextFieldContainer(
              child: TextField(textAlign: TextAlign.center),
            ),
            SizedBox(height: size.height * 0.1),
            Text('Варианты ответов'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldContainer(
                  child: TextField(textAlign: TextAlign.center),
                ),
                Checkbox(value: _checkboxValues[0], 
                         onChanged: (newValue) {
                           setState(() {
                             _checkboxValues[0] = newValue;
                           });
                         }
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldContainer(
                  child: TextField(textAlign: TextAlign.center),
                ),
                Checkbox(value: _checkboxValues[1], 
                         onChanged: (newValue) {
                           setState(() {
                             _checkboxValues[1] = newValue;
                           });
                         }
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldContainer(
                  child: TextField(textAlign: TextAlign.center),
                ),
                Checkbox(value: _checkboxValues[2], 
                         onChanged: (newValue) {
                           setState(() {
                             _checkboxValues[2] = newValue;
                           });
                         }
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldContainer(
                  child: TextField(textAlign: TextAlign.center),
                ),
                Checkbox(value: _checkboxValues[3], 
                         onChanged: (newValue) {
                           setState(() {
                             _checkboxValues[3] = newValue;
                           });
                         }
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: setStyleWith(Colors.lightBlue),
                  onPressed: () => {},
                  child: Text('Продолжить', 
                          style: TextStyle(color: Colors.white))
                ),
                TextButton(
                  style: setStyleWith(Colors.red),
                  onPressed: () => {},
                  child: Text('Завершить',
                          style: TextStyle(color: Colors.white)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
