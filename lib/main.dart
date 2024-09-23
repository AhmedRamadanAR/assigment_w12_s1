import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu),
          title: Text('Assignment 1'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: MyListView(),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Color? color;

  CardItem({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final style= TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20);

    return Container(
      height: 200,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Top Left",
                style: style,
              ),
            ),
          ),
           Center(child: Text("Center",style: style,)),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Bottom Right",
                style: style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.orange[900],
      Colors.green[800],
      Colors.red[700],
      Colors.yellow[600],
      Colors.deepPurple[500],
      Colors.red[400],
      Colors.deepPurple[300],
      Colors.deepPurple[200],

    ];

    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final color = colors[index % colors.length];
          return Padding(
            padding: EdgeInsets.all(8),
            child: CardItem(color: color),
          );
        });
  }
}
