import 'package:flutter/material.dart';

import 'android/android_home.dart';
import 'screen_gate.dart';
import 'windows/webb_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
      home:  AndroidHomePage(),
    );
  }
}


/*
echo "# ELK-records" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/nestsoft-dev/ELK-records.git
git push -u origin main
 */