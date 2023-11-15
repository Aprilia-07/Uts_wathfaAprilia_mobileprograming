import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:resep_app/pages/splash_page.dart';

void main() {
  runApp(const ResepApp());
}

class ResepApp extends StatelessWidget {
  const ResepApp({super.key});
  
  get SplashScreen => null;

  get namaBarang => null;

  get image => null;

  get stok => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ignore: dead_code, empty_statements
      home: SplashScreen);
  }
}

class SplashScreens {
}

