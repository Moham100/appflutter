import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

// ---------------- HOME PAGE ----------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the Home Page',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-607e0419a346a16c0daac82466e0e5c8.png',
              width: 200,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
              child: const Text('Go to About Page'),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- ABOUT PAGE ----------------
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.info, size: 60, color: Colors.blue),
              const SizedBox(height: 20),
              const Text(
                'This is the About Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
                child: const Text('Go to Contact Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- CONTACT PAGE ----------------
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Page'), centerTitle: true),
      body: const Center(
        child: Text(
          'This is the Contact Page',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
