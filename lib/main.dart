import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfilePage(title: 'My Profile'),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _profilePageState();
}

class _profilePageState extends State<ProfilePage> {
  int points = 0;

  void addPoint() {
    setState(() {
      setState(() {
        points = points + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'My profile',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
    
          children: [
            const Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQpjW2rZTq4tfUeqEOTg6mvEnFhTFSui39XsArHKE7V8yL_dbaSNywmNs&s',
                ),
              ),
            ),
            
            const SizedBox(height: 15),

            const Divider(
              color: Colors.black,
              thickness: 2,
            ),

            const Text(
              'Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Maduranga',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 25),

            const Text(
              'Email',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 10),
                Text(
                  'maduranga@gmail.com',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'Points',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Row(
              children: [
                const Icon(Icons.star),
                const SizedBox(width: 10),
                Text(
                  '$points',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addPoint,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
