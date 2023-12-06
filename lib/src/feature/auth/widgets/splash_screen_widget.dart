import 'package:chat_app/src/common/styles/app_colors.dart';
import 'package:chat_app/src/common/utils/custom_button.dart';
import 'package:chat_app/src/common/utils/custom_extension.dart';
import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Center(
          child: Image(
            fit: BoxFit.cover,
            width: 262,
            height: 271,
            image: AssetImage("asset/images/splash_image.png"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 280,
          child: Text(
            "Connect easily with your family and friends over countries",
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColors.black700,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "Terms & Privacy Policy",
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.black700,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
