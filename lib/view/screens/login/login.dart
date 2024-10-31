import 'package:flutter/material.dart';
import 'package:quiz_game/utils/constants/sizes.dart';
import 'package:quiz_game/view/widgets/app_bar/app_bar.dart';
import 'package:quiz_game/view/widgets/background/background.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70), // Adjust the height of the AppBar
        child: MainAppBar(),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Background(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'أدخل الكود'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(height: FSizes.defaultSpace),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("دخول"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
