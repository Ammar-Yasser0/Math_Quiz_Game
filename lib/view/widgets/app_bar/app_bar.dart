import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}