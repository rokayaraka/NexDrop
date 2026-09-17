import 'package:flutter/material.dart';
import 'package:nex_drop/constants/app_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final logoWidth = screenWidth * 0.65;
    final imageWidth = screenWidth * 0.75;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: .symmetric(horizontal: screenWidth * 0.07),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Transform.translate(
              offset: const Offset(-52, 0),
              child: Image.asset(
                "assets/images/wanmac_black_log.png",
                width: logoWidth,
              ),
            ),
            Transform.translate(
              offset: Offset(0, -60),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Send Packeges",
                    style: TextStyle(
                      fontSize: screenWidth * 0.075,
                      fontWeight: .bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'With Trusted ',
                          style: TextStyle(
                            fontSize: screenWidth * 0.075,
                            fontWeight: .w500,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'riders',
                          style: TextStyle(
                            fontSize: screenWidth * 0.075,
                            fontWeight: .w500,
                            color: AppColors.primaryDark,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),
                  Text(
                    'Book a rider in minutes & deliver your package quickly and safely',
                    style: TextStyle(
                      fontSize: screenWidth * 0.038,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
            ),
            //welcome image
            Expanded(
              child: Image.asset(
                'assets/images/welcome_hand.png',
                width: imageWidth,
                fit: .contain,
              ),
            ),

            //Get started button
            SizedBox(
              width: .infinity,
              height: screenHeight * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryDark,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: .circular(16)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(fontSize: 16, fontWeight: .bold),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 18),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),

            //Login Text
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                        fontWeight: .bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryDark,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
