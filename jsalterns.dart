import 'package:flutter/material.dart';
// list
final List<String> list = [
    '> THe research suggests that honey is a viable alternative to cane suger at a ration to 1:1',
    '> THe research suggests that mapple is a viable alternative to cane suger at a ration to 1:1.1',
    '> THe research suggests that surup is a viable alternative to cane suger at a ration to 1.2:1'
];
// run code
void main() 
{
  runApp(const MyApp());
}
// setup app
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}
// create app state
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //String fir = list[0];
  //String sec = list[1];
  //String thi = list[2];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        var post = list[index];
        return Card(
          child: Row(
            children: <Widget>[
              Expanded(
                child: (Text(post)))
                ],
          ),
        );
      },
    );
  }
}