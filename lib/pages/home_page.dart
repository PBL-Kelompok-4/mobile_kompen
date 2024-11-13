import 'package:flutter/material.dart';
import 'task_page.dart';
import 'history_page.dart';
import 'profile_page.dart';
import '../widgets/info_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SISTEM KOMPEN'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            Text('Hilmy Zaky Mustakim\n2241760062', textAlign: TextAlign.center),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(label: 'Total Alpha', value: '30 JAM'),
                InfoCard(label: 'Total Kompen', value: '60 JAM'),
                InfoCard(label: 'Kompen Lunas', value: '15 JAM'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
        } else if (index == 1) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaskPage()));
        } else if (index == 2) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HistoryPage()));
        } else if (index == 3) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        }
      },
    );
  }
}
