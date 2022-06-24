import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz APP",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz APP"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Quem nasceu primeiro, o ovo ou a galinha?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Galinha...");
                    },
                    child: const Text("Galinha"),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Ovo...");
                    },
                    child: Text("Ovo"),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Dinossauro...");
                    },
                    child: Text("Dinossauro"),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Deus...");
                    },
                    child: const Text("Deus"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
