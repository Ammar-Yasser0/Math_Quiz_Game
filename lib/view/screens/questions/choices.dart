import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:quiz_game/utils/constants/colors.dart';

class Choices extends StatelessWidget {
  const Choices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OptionButton(
              choiceTitle: 'أ',
            ),
            OptionButton(
              choiceTitle: 'ب',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OptionButton(
              choiceTitle: 'جـ',
            ),
            OptionButton(
              choiceTitle: 'د',
            ),
          ],
        ),
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  const OptionButton({super.key, required this.choiceTitle});

  final String choiceTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 70,
        width: 210,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: FColors.secondary, // Border matches the pink color
            width: 3,
          ),
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ChoiceTitle(
                title: choiceTitle,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Math.tex(
                  r'\frac{2}{5}',
                  mathStyle: MathStyle.text,
                  options: MathOptions(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChoiceTitle extends StatelessWidget {
  const ChoiceTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 40,
      decoration: const BoxDecoration(
        color: FColors.accent, // Pink shape at the end of the button
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
