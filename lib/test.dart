import 'package:flutter/material.dart';
import 'package:quiz_game/utils/constants/sizes.dart';
import 'package:quiz_game/view/screens/questions/choices.dart';
import 'package:quiz_game/view/screens/questions/question_body.dart';
import 'package:quiz_game/view/widgets/app_bar/app_bar.dart';

import 'view/screens/questions/questions.dart';

class TestWidgets extends StatelessWidget {
  const TestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: MainAppBar(),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.help_outline,
                size: 40,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const Column(
                    children: [
                      QuestionBody(),
                      SizedBox(height: FSizes.defaultSpace),
                      Choices(),
                      SizedBox(height: FSizes.defaultSpace),
                      NextButton(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
