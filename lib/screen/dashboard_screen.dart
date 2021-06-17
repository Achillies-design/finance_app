import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance App'),
      ),
      body: Center(
        child: Text(
          'Dashboard',
          style: TextStyle(
            fontSize: 36.0,
          ),
        ),
      ),
    );
  }
}
