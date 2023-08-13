import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
        ),
        appBar: AppBar(
          title: Text('ABA Mobile'),
          actions: [
            Icon(Icons.notifications),
            Icon(Icons.call),
            Container(
              child: Container(
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  child: GridView.count(crossAxisCount: 3,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:5.0,top: 5),
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.menu),
                            Text('Account'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.indigo,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
