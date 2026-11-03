// - What does super.key do? Where does the key go?
//   super.key passes the widget identifier up to the parent Widget class constructor.
//   The key is stored in the base class to track and uniquely identify widget instances across widget tree rebuilds.
//
// - What's the difference between the Key? key passed through super.key and the GlobalKey<FormState> (_keyForm)?
//   - Key? key: Used by Flutter framework to distinguish between sibling widgets of the same type.
//   - GlobalKey<FormState>: A unique key giving direct programmatic access to FormState (e.g., to call .validate()).
//
// - Why does const make Flutter faster?
//   - It tells Flutter the widget is compile-time constant, skipping recreation/re-evaluation on rebuilds.
//
// - What does the _ do in Dart, and why should State classes be private?
//   - The leading underscore (_) enforces library-private visibility, protecting internal state and controllers
//   from being accessed or modified outside their file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'database.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _keyForm,
          child: ListView(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: "Username"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // محاكاة تسجيل الدخول البسيط
                  Database.isLoggedIn = true;
                  context.go("/home");
                },
                child: const Text("Login"),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.push("/signup"),
                child: const Text("Don't have an account? Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}