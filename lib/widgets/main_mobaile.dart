import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobaile extends StatelessWidget {
  const MainMobaile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                      colors: [Colors.transparent, Colors.black26])
                  .createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/flutter_avter_image.png",
              width: screenWidth * 0.6,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          //intro massage
          const Text(
            "Hi...\nI'm Durgapada Karan\nA  AI & ML Student.",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //contact btn
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.darkTeal,
                foregroundColor: CustomColor.whitePrimary,
              ),
              child: const Text("Get In Touch"),
            ),
          )
        ],
      ),
    );
  }
}
