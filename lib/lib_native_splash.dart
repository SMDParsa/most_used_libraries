import 'package:flutter/material.dart';

class NativeSplashApp extends StatelessWidget {
  const NativeSplashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Native splash show on app launch!')),
    );
  }
}
