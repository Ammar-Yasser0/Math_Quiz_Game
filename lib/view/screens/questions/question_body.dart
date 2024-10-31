import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:quiz_game/utils/constants/colors.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      constraints: const BoxConstraints(
        minHeight: 180,
      ),
      decoration: BoxDecoration(
        color: FColors.white.withOpacity(0.8), // Semi-transparent white
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Question(),
    );
  }
}

class Question extends StatelessWidget {
  const Question({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headlineMedium,
        children: [
          const TextSpan(text: 'في معادلة فيثاغورس، لدينا '),
          WidgetSpan(
            child: Math.tex(
              r'a^2 + b^2 = c^2', // LaTeX equation
              textStyle: const TextStyle(fontSize: 24),
            ),
          ),
          const TextSpan(text: ' التي تربط بين أضلاع المثلث القائم الزاوية.'),
        ],
      ),
    );
  }
}
