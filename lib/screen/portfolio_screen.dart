import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: Center(
        child: Text(
          'Portfolio',
          style: TextStyle(
            fontSize: 36.0,
          ),
        ),
      ),
    );
  }
}
