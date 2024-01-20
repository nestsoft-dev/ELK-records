import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widget/android_drawer.dart';
import 'widget/divider.dart';
import 'widget/lsit_card.dart';

class AndroidHomePage extends StatelessWidget {
  AndroidHomePage({super.key});
  CarouselController buttonCarouselController = CarouselController();
  final List<String> _drawwerHEader = [
    'Music',
    'Videos',
    'Shows',
    'Contact',
    'Press kit'
  ];
  final List<String> _images = [
    'assets/card_one.jpg',
    'assets/card_two.jpg',
    'assets/card_three.jpg'
  ];
  final List<String> _names = ['Mixtape', 'Singles', 'Album'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[450],
      drawer: android_drawer(size: size, drawwerHEader: _drawwerHEader),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/card_image.jpg'),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.9,
                    width: size.width,
                    color: Color.fromARGB(80, 0, 0, 0),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'NEW ALBUM ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            Text(
                              ' OUT NOW',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        const Text(
                          'ELK Records',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 160,
              child: Center(
                child: Text(
                  'MUSIC',
                  style: TextStyle(
                      color: Color.fromARGB(88, 158, 158, 158),
                      fontWeight: FontWeight.bold,
                      fontSize: 130),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.95,
              child: ListView.builder(
                  itemCount: _images.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20)
                            .copyWith(bottom: 15),
                        child: ListCard(
                          imagePath: _images[index],
                          name: _names[index],
                        ),
                      )),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'VIEW ALL RELEASE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: size.height * 0.6,
              width: size.width,
              child: CarouselSlider(
                items: _images
                    .map((image) => Container(
                          height: size.height * 0.6,
                          width: size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(image)),
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 50,
                                )),
                          ),
                        ))
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  height: size.height * 0.6,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  aspectRatio: 1,
                  initialPage: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'ARTISTS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            //artis
            SizedBox(
              height: size.height * 0.95,
              child: ListView.builder(
                  itemCount: _images.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20)
                            .copyWith(bottom: 15),
                        child: ListCard(
                          imagePath: _images[index],
                          name: _names[index],
                        ),
                      )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: size.height * 0.95,
              width: size.width,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'STAY UPDATED',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'THE LATEST UPDATES STRAIGHT TO YOUR INBOX',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your email address',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      'SUBSCRIBE',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
