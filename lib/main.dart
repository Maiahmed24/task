import 'package:flutter/material.dart';
import 'router.dart'; // استدعاء ملف الروتر اللي عملناه

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      routerConfig: router, // ربط التطبيق بالروتس بتاعتنا
    );
  }
}