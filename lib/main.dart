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
  int _currentTake = 0;
  final _goal = 2000;

  void _waterAdd(int amount) {
    setState(() {
      if (_currentTake < _goal) {
        _currentTake = (_currentTake + amount).clamp(0, _goal);
      }
    });
  }

  void _reset() {
    setState(() {
      _currentTake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentTake / _goal).clamp(0.0, 1.0);
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
                  Text('Today in Take',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('${_currentTake} ml',
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
                    value: progress,
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.blue,
                    strokeWidth: 10,
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              spacing: 15,
              children: [
                AddWater(
                  amount: 100,
                  icon: Icons.local_drink,
                  Onclick: () => _waterAdd(100),
                ),
                AddWater(
                  amount: 200,
                  Onclick: () => _waterAdd(200),
                ),
                AddWater(
                  amount: 500,
                  icon: Icons.local_cafe,
                  Onclick: () => _waterAdd(500),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade300,
                    ),
                    onPressed: () => _reset(),
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
