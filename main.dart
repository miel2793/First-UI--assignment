import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 2',
      home: Ap(),
    );
  }
}

class Ap extends StatelessWidget {
  const Ap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.amber,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
        ],
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              CircleAvatar(
                radius: 100,
                child: Icon(
                  Icons.icecream_outlined,
                  size: 100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Ice cream is very delicious right?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
          Column(
            children: const [
              CircleAvatar(
                radius: 100,
                child: Icon(
                  Icons.code,
                  size: 100,
                ),
              ),
              Text(
                "Programming is not boring if you love it",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
          Column(
            children: const [
              CircleAvatar(
                radius: 100,
                child: Icon(
                  Icons.egg_outlined,
                  size: 100,
                ),
              ),
              Text(
                "If you submit code directly from ChatGPT \nthen mark will be 0",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}