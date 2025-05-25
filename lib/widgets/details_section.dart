import 'package:flutter/material.dart';
import 'package:interview_task/utils/kTextStyle.dart';
import 'package:sizer/sizer.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23.0, bottom: 8),
          child: Row(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.sp,
                backgroundImage: AssetImage('assets/images/joey.png'),
              ),
              Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    "Angelina, 28",
                    style: kTextStyle(
                      11,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " What is your favorite time\n of the day?",
                    style: kTextStyle(
                      20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ).copyWith(height: 1),
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
          "\"Mine is definitely the peace in the morning\"",
          style: kTextStyle(
            13.sp,
            color: Color(0xff8e8db2),
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
