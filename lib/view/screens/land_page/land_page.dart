import 'package:flutter/material.dart';
import 'package:quiz_game/view/widgets/background/background.dart';

import 'info_card.dart';

class LangPage extends StatelessWidget {
  const LangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(70), // Adjust the height of the AppBar
        child: Material(
          elevation: 15, // Custom elevation for shadow
          child: AppBar(
            title: const Text('مسابقة الرياضيات'),
            centerTitle: true,
            leadingWidth: 150,
            toolbarHeight: 70,
            leading: Container(
              padding: const EdgeInsets.all(1.0),
              width: 120,
              height: 70,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      body: const Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Background(),
            InfoCard(),
          ],
        ),
      ),
    );
  }
}
