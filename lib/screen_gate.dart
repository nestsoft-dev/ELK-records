import 'package:elf_records/android/android_home.dart';
import 'package:elf_records/windows/webb_home.dart';
import 'package:flutter/material.dart';

class ScreenGate extends StatelessWidget {
  const ScreenGate({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > 1550 && size.height > 2560) {
      return const WebHomePage();
    } else {
      return  AndroidHomePage();
    }
  }
}
