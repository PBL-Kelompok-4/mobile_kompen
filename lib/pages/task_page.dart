import 'package:flutter/material.dart';
import 'home_page.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SISTEM KOMPEN'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text('Task Page Content Here')),
      bottomNavigationBar: HomePage().build(context).bottomNavigationBar,
    );
  }
}

extension on Widget {
  get bottomNavigationBar => null;
}
