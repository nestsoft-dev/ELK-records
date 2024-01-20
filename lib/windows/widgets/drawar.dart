import 'package:flutter/material.dart';

class WebDrawer extends StatelessWidget {
  const WebDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView.builder(
          itemBuilder: (_, index) => ListTile(
                title: Text(
                  'Music',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )),
    );
  }
}
