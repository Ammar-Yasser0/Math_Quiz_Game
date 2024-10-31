import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        // Background Image
        SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/bg1.jpg',
              fit: BoxFit.fill,
            )),
        // Overlay
        Container(
          // width: 4.5 * (MediaQuery.of(context).size.width / 6),
          height: MediaQuery.of(context).size.height,
          color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
        ),
      ],
    );
  }
}
