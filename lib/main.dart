import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_task/utils/extensions.dart';
import 'package:interview_task/home.dart';
import 'package:interview_task/widgets/details_section.dart';
import 'package:interview_task/widgets/header_widget.dart';
import 'package:interview_task/utils/kTextStyle.dart';
import 'package:interview_task/widgets/option_widget.dart';
import 'package:sizer/sizer.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Color(0xff0f1115)),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, _, _) {
        return MaterialApp(home: Home(), debugShowCheckedModeBanner: false);
      },
    );
  }
}
