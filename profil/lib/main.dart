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
      title: 'Profil Sayfası',
      theme: ThemeData(
        fontFamily: 'Roboto', // Özel fontu burada tanımlıyoruz
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Sayfası'),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, //boşluğu sıfırlar
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 163, 186, 45),
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profilim'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tıklama durumunda yapılacak işlem
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Butona tıklandı!')),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profil Resmi
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("lib/assets/images/images.jpeg"),
            ),
            const SizedBox(height: 16),

            // İsim ve Meslek Bilgisi
            const Text(
              'Fatma Nur',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Yazılım Mühendisi Adayı',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // İkonlu Butonlar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Tıklama durumunda yapılacak işlem
                  },
                  icon: const Icon(Icons.email),
                  color: Colors.blue,
                  iconSize: 30,
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    // Tıklama durumunda yapılacak işlem
                  },
                  icon: const Icon(Icons.phone),
                  color: const Color.fromARGB(255, 160, 38, 140),
                  iconSize: 30,
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    // Tıklama durumunda yapılacak işlem
                  },
                  icon: const Icon(Icons.location_on),
                  color: Colors.red,
                  iconSize: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
