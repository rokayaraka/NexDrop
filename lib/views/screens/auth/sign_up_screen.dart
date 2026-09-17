import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.055,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.025),

              // Back button
              Container(
                width: screenWidth * 0.11,
                height: screenWidth * 0.11,
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F5F7),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: screenWidth * 0.065,
                    color: Colors.black,
                  ),
                ),
              ),

              // Title
              Center(
                child: Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: screenWidth * 0.068,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.018),

              // Subtitle
              Center(
                child: Text(
                  'Enter your details below to create your account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.039,
                    color: const Color(0xFF707070),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.035),

              // Phone number
              Text(
                'Phone number *',
                style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: screenHeight * 0.012),

              TextFormField(
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: '08000000000',
                  hintStyle: TextStyle(
                    color: const Color(0xFFA5A5A5),
                    fontSize: screenWidth * 0.042,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F6F6),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.055,
                    vertical: screenHeight * 0.023,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.027),

              // Email
              Text(
                'Email address *',
                style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: screenHeight * 0.012),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: 'example@email.com',
                  hintStyle: TextStyle(
                    color: const Color(0xFFA5A5A5),
                    fontSize: screenWidth * 0.042,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F6F6),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.055,
                    vertical: screenHeight * 0.023,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.027),

              // First name
              Text(
                'First name *',
                style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: screenHeight * 0.012),

              TextFormField(
                textCapitalization: TextCapitalization.words,
                style: TextStyle(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: 'e.g John',
                  hintStyle: TextStyle(
                    color: const Color(0xFFA5A5A5),
                    fontSize: screenWidth * 0.042,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F6F6),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.055,
                    vertical: screenHeight * 0.023,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: .none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: .none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.027),

              // Last name
              Text(
                'Last name *',
                style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  fontWeight: .w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: screenHeight * 0.012),

              TextFormField(
                textCapitalization: .words,
                style: TextStyle(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: 'e.g Doe',
                  hintStyle: TextStyle(
                    color: const Color(0xFFA5A5A5),
                    fontSize: screenWidth * 0.042,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F6F6),
                  contentPadding: .symmetric(
                    horizontal: screenWidth * 0.055,
                    vertical: screenHeight * 0.023,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: .none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: .none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.04),

              // Continue button
              SizedBox(
                width: .infinity,
                height: screenHeight * 0.065,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: screenWidth * 0.042,
                      fontWeight: .w600,
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.024),

              // Sign in
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: screenWidth * 0.037,
                      color: const Color(0xFF7C7C7C),
                    ),
                    children: const [
                      TextSpan(
                        text: 'Already have an account? ',
                      ),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: .w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.025),
            ],
          ),
        ),
      ),
    );
  }
}