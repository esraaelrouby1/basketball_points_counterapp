import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int team_A = 0;

  int team_B = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //عشان نمسح الشريط الاحمر اللي ع الجنب
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Color.fromARGB(255, 185, 2, 63),
        ),
        body: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //نبعدهم بمسافات متساوية
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      "$team_A",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 185, 2, 63),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          team_A++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 185, 2, 63),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          team_A += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 185, 2, 63),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          team_A += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    color: const Color.fromARGB(255, 168, 167, 167),
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      "$team_B",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 185, 2, 63),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          team_B++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 185, 2, 63),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          team_B += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 185, 2, 63),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          team_B += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 185, 2, 63),
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  team_B = 0;
                  team_A = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
