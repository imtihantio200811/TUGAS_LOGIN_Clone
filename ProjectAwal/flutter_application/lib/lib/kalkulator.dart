import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Page")),
      body: Column(
        children: [
          Text(
            "Welcome to Kalkulator",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Angka 1")),
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Angka 2")),
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("+")),
                ElevatedButton(onPressed: () {}, child: Text("-")),
                ElevatedButton(onPressed: () {}, child: Text("*")),
                ElevatedButton(onPressed: () {}, child: Text("/")),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Hasil",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: ElevatedButton(onPressed: () {}, child: Text("Reset")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}