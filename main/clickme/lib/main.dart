import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robot Controller',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Robot Controller'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //functions here
  int _counter = 0;
  bool grabber_state = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

     togglegrabber() {
        if (grabber_state) {
          grabber_state = false;
          return "Up";
        }
        else {
          grabber_state = true;
          return "Down";
        }
        
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                  "Left Sonar:"
                  ),),
            Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                  "Right Sonar:"
                  ),),]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topCenter,
                  child: const Text(
                  "SONAR_L"
                  ),),
              Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topCenter,
                  child: const Text(
                  "SONAR_R"
                  //style: 
                  ),),
                  ]),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                  "Front Sonar:"
                  ),),
            Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                  "Color Sensor:"
                  ),),]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topCenter,
                  child: const Text(
                  "SONAR_F"
                  ),),
              Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topCenter,
                  child: const Text(
                  "COLOR"
                  //style: 
                  ),),
                  ]),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                  "Grabber Status::"
                  ),),
            Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                  "Commands Run:"
                  ),),]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topCenter,
                  child:  Text(
                  togglegrabber()
                  ),),
              Container(
                width: 110,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topCenter,
                  child: const Text(
                  "COMMANDS"
                  //style: 
                  ),),
        ]),
              FloatingActionButton(
              onPressed: togglegrabber(),
                tooltip: 'Toggle_Grabber',
                child: Icon(Icons.toggle_on),
               ),
        
    ]));
  }
}
