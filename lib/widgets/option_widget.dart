import 'package:flutter/material.dart';
import 'package:interview_task/utils/extensions.dart';
import 'package:interview_task/utils/kTextStyle.dart';
import 'package:sizer/sizer.dart';

class OptionWidget extends StatelessWidget {
  String? text;
  String? leading;
  OptionWidget({this.leading, this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 9),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 41, 49, 52),
        borderRadius: BorderRadius.circular(12),
        border: leading != "D"
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
              color: leading == "D" ? Color(0xff8B88EF) : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(leading == "D" ? 0xffffffff : 0xffC4C4C4),
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
    );
  }
}

class OptionsBlock extends StatelessWidget {
  const OptionsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 12,
      children: [
        Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: OptionWidget(
                leading: 'A',
                text: 'The peace in the early mornings',
              ),
            ),
            Expanded(
              child: OptionWidget(
                leading: 'B',
                text: 'The magical golden hours',
              ),
            ),
          ],
        ),
        Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: OptionWidget(
                leading: 'C',
                text: 'Wind-down time after dinners',
              ),
            ),
            Expanded(
              child: OptionWidget(
                leading: 'D',
                text: 'The serenity past midnight',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
