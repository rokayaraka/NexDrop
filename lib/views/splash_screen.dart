import 'package:flutter/material.dart';
import 'package:nex_drop/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Container(
        width: .infinity,
        height: .infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: .topLeft,
            end: .bottomRight,
            colors: [AppColors.primaryDark, AppColors.primary],
          ),
        ),
        child: Center(
          child: Image.asset("assets/images/wanmac_logo_white.png",
          width: screenWidth*0.80,
          ),
        ),
      ),
    );
  }
}
