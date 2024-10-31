import 'package:flutter/material.dart';
import 'package:quiz_game/view/widgets/app_bar/app_bar.dart';
import 'package:quiz_game/view/widgets/background/background.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: MainAppBar(),
      ),
      body: Stack(
        children: [
          Background()
        ],
      ),
    );
  }
}
