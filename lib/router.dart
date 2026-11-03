import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'products_page.dart';
import 'signup_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductsPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupPage(),
    ),
  ],
);