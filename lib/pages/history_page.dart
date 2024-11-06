import 'package:flutter/material.dart';
import 'home_page.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text('History Page Content Here')),
      bottomNavigationBar: HomePage().build(context).bottomNavigationBar,
    );
  }
}

extension on Widget {
  get bottomNavigationBar => null;
}
