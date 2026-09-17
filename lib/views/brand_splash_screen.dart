import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class BrandSplashScreen extends StatefulWidget {
  const BrandSplashScreen({super.key});

  @override
  State<BrandSplashScreen> createState() => _BrandSplashScreenState();
}

class _BrandSplashScreenState extends State<BrandSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoWidthAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _logoWidthAnimation = Tween<double>(
      begin: 0.80,
      end: 0.60,
    ).animate(_controller);
    _controller.forward();

  }

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
          child: AnimatedBuilder(animation: _controller, builder: (context,child){
            return Image.asset("assets/images/wanmac_logo_white.png",
            width: screenWidth*_logoWidthAnimation.value,
            );
          })
        ),
      ),
    );
  }
}
