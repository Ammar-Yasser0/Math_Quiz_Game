import 'package:flutter/material.dart';
import 'package:quiz_game/utils/constants/sizes.dart';
import 'package:quiz_game/view/widgets/background/background.dart';

import 'choices.dart';
import 'question_body.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Background(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    SizedBox(height: FSizes.defaultSpace),
                    Expanded(child: QuestionsList()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionsList extends StatelessWidget {
  const QuestionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemExtent: MediaQuery.of(context).size.width / 2,
      itemCount: 3,
      itemBuilder: (context, index) {
        return ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: const Column(
              children: [
                QuestionBody(),
                SizedBox(height: FSizes.defaultSpace),
                Choices(),
                SizedBox(height: FSizes.defaultSpace),
                NextButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisSize:
                MainAxisSize.min, // Ensures the button wraps the content
            children: [
              Icon(
                Icons.arrow_back_ios, // Right arrow icon
                size: 18, // Adjust icon size if necessary
              ),
              SizedBox(width: 8),
              Text(
                'التالي',
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
