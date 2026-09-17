import 'package:flutter/material.dart';


import '../../constants/app_colors.dart';
import 'welcome_screen.dart';

class BrandSplashScreen extends StatefulWidget {
  const BrandSplashScreen({super.key});

  @override
  State<BrandSplashScreen> createState() => _BrandSplashScreenState();
}

class _BrandSplashScreenState extends State<BrandSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoWidthAnimation;
  late Animation<double> _bikeProgressAnimation;

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

    _bikeProgressAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    _controller.forward();

    _controller.addStatusListener((status){
      if(status==AnimationStatus.completed){
        if(!mounted)return;
        else{
          Navigator.pushReplacement(context, 
          MaterialPageRoute(builder: (context)=>WelcomeScreen()));
        }
      }
    });
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
        child: Column(
          children: [
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Image.asset(
                    "assets/images/wanmac_logo_white.png",
                    width: screenWidth * _logoWidthAnimation.value,
                  );
                },
              ),
            ),
            SizedBox(height: 30,),
            // AnimatedBuilder(
            //     animation: _controller,
            //     builder: (context, child) {
            //       return Image.asset(
            //         "assets/images/wanmac_bike.png",
            //         width: screenWidth * _bikeProgressAnimation.value,
                    
            //       );
            //     },
            //   ),
          ],
        ),
      ),
    );
  }
}
