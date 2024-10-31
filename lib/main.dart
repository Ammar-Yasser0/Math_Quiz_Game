import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game/test.dart';
import 'package:quiz_game/view/screens/questions/questions.dart';

import 'utils/theme/theme.dart';
import 'view/screens/login/login.dart';
// import 'view/screens/land_page/land_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path:
          'assets/translations',
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "لعبة الأسئلة",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: const Locale('ar'),
      themeMode: ThemeMode.light,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      home: Questions(),
    );
  }
}


