import 'package:flutter/material.dart';
import 'package:project_1100/pages/home_pages/con_home_page.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Full-screen background image
            Positioned.fill(
              child: Image.asset(
                'assets/img/onborad_page/background.png',
                fit: BoxFit.cover,
              ),
            ),
            // Foreground content on top of background
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Top image
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      'assets/img/onborad_page/rob.png',
                      // height: screenHeight * 0.2,
                      width: screenWidth * 0.7,
                    ),
                  ),
                  // Bottom button
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: SizedBox(
                      height: screenWidth * 0.2,
                      width: screenWidth * 0.75, // 3/4 width
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 246, 248, 131), // Dark yellow
                              Color.fromARGB(255, 248, 190, 0), // Light yellow
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AppConHomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'Start Now !',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
