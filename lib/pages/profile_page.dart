import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 16),
            Text('Nama: Himmy Zaky Mustakim'),
            Text('NIM: 2241760062'),
            Text('Program Studi: D-IV Sistem Informasi Bisnis'),
            Text('Jurusan: Teknologi Informasi'),
            Text('Nomor Telepon: 081297731113'),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('LOGOUT'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomePage().build(context).bottomNavigationBar,
    );
  }
}

extension on Widget {
  get bottomNavigationBar => null;
}
