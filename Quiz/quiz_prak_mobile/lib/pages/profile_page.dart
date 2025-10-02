import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Logout',
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(height: 24),
                _buildInfoCard(
                  icon: Icons.person,
                  title: 'Nama',
                  subtitle: 'Stefano Garrent Khristiawan',
                  context: context,
                ),
                 _buildInfoCard(
                  icon: Icons.badge,
                  title: 'NIM',
                  subtitle: '124230117',
                  context: context,
                ),
                 _buildInfoCard(
                  icon: Icons.cake,
                  title: 'Tempat, Tanggal Lahir',
                  subtitle: 'Kediri, 23 Mei 2005',
                  context: context,
                ),
                 _buildInfoCard(
                  icon: Icons.favorite,
                  title: 'Hobi',
                  subtitle: 'Berkebun',
                  context: context,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 1, // Set Profile as the current page
        selectedItemColor: Colors.deepOrange, // Highlight color
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage(username: 'Stefano Garrent Khristiawan')),
            );
          }
        },
      ),
    );
  }

  Widget _buildInfoCard({required IconData icon, required String title, required String subtitle, required BuildContext context}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.deepOrange, size: 30),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}