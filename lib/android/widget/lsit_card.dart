// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'divider.dart';

class ListCard extends StatelessWidget {
  ListCard({
    Key? key,
    required this.imagePath, required this.name,
  }) : super(key: key);
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(5).copyWith(right: 10, left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Text(
            'ELK Records',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Gee Tizzly',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w100, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: size.width * 0.8,
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Stream ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              StriaghtLine(
                size: size.height,
                color: Colors.black,
              ),
              const Text(
                ' Download ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              StriaghtLine(
                size: size.height,
                color: Colors.black,
              ),
              const Text(
                ' Buy',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
