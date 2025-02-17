import 'package:flutter/material.dart';
import 'package:water_tracker/Widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Water Tracter',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 2)
                  ]),
              child: Column(
                children: [
                  Text('Today in',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('100ml',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: 0.7,
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.blue,
                    strokeWidth: 10,
                  ),
                ),
                Text(
                  '70%',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            AddWater(),
            AddWater(),
            AddWater(),
            SizedBox(
              height: 30,
            ),
            SizedBox(width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade300,
                ),
                    onPressed: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
