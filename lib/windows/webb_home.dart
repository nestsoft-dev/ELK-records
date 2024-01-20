import 'package:elf_records/windows/widgets/drawar.dart';
import 'package:flutter/material.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const WebDrawer(),
      appBar: AppBar(
        title: Text(
          'ELK Records',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: [
          //app bar
        ],
      ),
    );
  }
}
