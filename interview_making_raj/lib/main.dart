import 'package:flutter/material.dart';

import 'features/Interview/pages/interview_details_page.dart';
import 'theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview Making',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.kPrimaryColor,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlackColor),
          labelSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.kBlackColor),
          labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.kBlackColor),
          // titleSmall: titleT6font,
          // bodyLarge: bodyT7font,
          // bodyMedium: formLabelT9font,
          // bodySmall: smallTextT11font,
        ),
      ),
      home: const InterviewDetailsPage(),
    );
  }
}
