import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

var gifts = [
    // Key:    Value
    '> THe research suggests that honey is a viable alternative to cane suger at a ration to 1:1',
    '> THe research suggests that mapple is a viable alternative to cane suger at a ration to 1:1.1',
    '> THe research suggests that surup is a viable alternative to cane suger at a ration to 1.2:1'
  ];

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alternatives',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget 
{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sugar")),
      body: const Column(children: <Widget>[TextInputWidget(), TextInputWidget1(), TextInputWidget2()],
       ));
  }
}
// ignore: must_be_immutable
class TextInputWidget extends StatelessWidget {
  const TextInputWidget({super.key});
  @override
  Widget build(BuildContext context){
    return Text(gifts[1]);
  }
}

class TextInputWidget1 extends StatelessWidget {
    const TextInputWidget1({super.key});
  @override
  Widget build(BuildContext context){
    return Text(gifts[0]);
  }
}

class TextInputWidget2 extends StatelessWidget {
  const TextInputWidget2({super.key});

  
  @override
  Widget build(BuildContext context){
    return Text(gifts[2]);
  }
}
