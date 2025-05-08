import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/spring_vacation.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spring\nVacation Trips',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Enjoy your winter vacations with warmth and\namazing sightseeing of the mountains .\nEnjoy the best experience with us!',
                    style: TextStyle(
                      fontFamily: 'SourceSans3',
                      fontSize: 16,
                      color: Color(0xff2c2c2c),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff6a62b7),
                          elevation: 0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Let's Go!    ",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 12),
                            SvgPicture.asset(
                              "images/arrow-com.svg",
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
