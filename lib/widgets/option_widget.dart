import 'package:flutter/material.dart';
import 'package:interview_task/utils/extensions.dart';
import 'package:interview_task/utils/kTextStyle.dart';
import 'package:interview_task/utils/options_notifier.dart';
import 'package:sizer/sizer.dart';

class OptionWidget extends StatelessWidget {
  String? text;
  String? leading;
  bool? selected;
  VoidCallback? onTap;
  OptionWidget({this.leading, this.text, this.selected, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 9),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 41, 49, 52),
          borderRadius: BorderRadius.circular(12),
          border: !selected!
              ? null
              : Border.all(color: Color(0xff8B88EF), width: 2),
        ),
        child: Row(
          spacing: 5,
          children: [
            Container(
              width: 20.sp,
              height: 20.sp,
              decoration: BoxDecoration(
                color: selected! ? Color(0xff8B88EF) : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(selected! ? 0xffffffff : 0xffC4C4C4),
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  leading!,
                  style: kTextStyle(12, color: Color(0xffffffff)),
                ),
              ),
            ),
            Expanded(
              child: Text(
                text!,
                style: kTextStyle(
                  14,
                  color: Color(0xffC4C4C4),
                ).copyWith(height: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}