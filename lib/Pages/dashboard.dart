import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String name;
  const Dashboard({required this.name});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gemayu"),
      ),
      body: Column(
        children: <Widget>[
          Text("Selamat datang " + widget.name + " di Gemayu")
        ],
      ),
    );
  }
}
