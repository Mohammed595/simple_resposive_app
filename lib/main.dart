import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.of(context).orientation;

    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                Icon(
                  Icons.bookmark_add_outlined,
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: SizedBox(
                width: width < 400 ? double.infinity : width * 0.4,
                height: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/ourImage.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              "Overview",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      size: 18,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const Text(
                      '8 hourse',
                      style: TextStyle(
                        color: Color(0xff7E7E7E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.cloud,
                      size: 18,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const Text(
                      '16˚C',
                      style: TextStyle(
                        color: Color(0xff7E7E7E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 20,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const Text(
                      '4.4',
                      style: TextStyle(
                        color: Color(0xff7E7E7E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 0.055 * height,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Book Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  const Icon(
                    Icons.north_east,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
