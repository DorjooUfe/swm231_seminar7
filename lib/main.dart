import 'package:flutter/material.dart';
import 'package:seminar7/widgets/example_1.dart';
import 'package:seminar7/widgets/example_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.blue,
      ),
      home: const Semminar7(title: 'Семинар 7'),
    );
  }
}

class Semminar7 extends StatefulWidget {
  const Semminar7({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Semminar7> createState() => _Semminar7State();
}

class _Semminar7State extends State<Semminar7> {
  Widget active = const SizedBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the Semminar7 object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Container(
              color: Colors.purple,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      active = Example1();

                      // print(active);
                    });
                  },
                  child: Text(
                    'Example 1',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              color: Colors.purple,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      active = Example2();
                    });
                  },
                  child: Text(
                    'Example 2',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 16,
            ),
            active
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
