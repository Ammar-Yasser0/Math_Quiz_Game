import 'package:flutter/material.dart';
import 'package:quiz_game/utils/constants/sizes.dart';
import 'package:quiz_game/view/screens/questions/questions.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'متسابق جديد',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: FSizes.defaultSpace),
            const SizedBox(
              width: 500,
              child: TextField(
                decoration: InputDecoration(hintText: 'الاسم'),
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems),
            // SizedBox(width: 500, child: ChooseGrade()),
            const SizedBox(height: FSizes.spaceBtwItems),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  Questions(),
                    ),
                  );
                },
                child: const Text("ابدأ المسابقة"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChooseGrade extends StatelessWidget {
  ChooseGrade({super.key});

  final List<String> levels = [
    'الأول الثانوي',
    'الثاني الثانوي',
    'الثالث الثانوي'
  ];

  final List<int> classNum = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'الصف',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        DropdownMenu<String>(
          hintText: 'اختر الصف',
          dropdownMenuEntries: levels.map((String value) {
            return DropdownMenuEntry<String>(
              value: value,
              label: value,
            );
          }).toList(),
          onSelected: (String? newValue) {},
        ),
        Text(
          'الشعبة',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        DropdownMenu<String>(
          width: 150,
          hintText: 'اختر الشعبة',
          dropdownMenuEntries: classNum.map((int value) {
            return DropdownMenuEntry<String>(
              value: value.toString(),
              label: value.toString(),
            );
          }).toList(),
          onSelected: (String? newValue) {},
        ),
      ],
    );
  }
}
