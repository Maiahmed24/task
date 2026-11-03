import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("welcome to Home Page"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.push("/products");
              },
              child: const Text("Go to Products"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Database.isLoggedIn = false;
                context.go("/login");
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}