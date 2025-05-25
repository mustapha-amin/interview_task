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

class OptionsBlock extends StatefulWidget {
  const OptionsBlock({super.key});

  @override
  State<OptionsBlock> createState() => _OptionsBlockState();
}

class _OptionsBlockState extends State<OptionsBlock> {
  OptionNotifer optionNotifer = OptionNotifer();

  @override
  void initState() {
    super.initState();
    optionNotifer.addListener(() {
      setState(() {});
    });
  }

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
                text: optionNotifer.options[0],
                selected: optionNotifer.selectedOption == 0,
                onTap: () {
                  optionNotifer.updateOption(0);
                },
              ),
            ),
            Expanded(
              child: OptionWidget(
                leading: 'B',
                text: optionNotifer.options[1],
                selected: optionNotifer.selectedOption == 1,
                onTap: () {
                  optionNotifer.updateOption(1);
                },
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
                text: optionNotifer.options[2],
                selected: optionNotifer.selectedOption == 2,
                onTap: () {
                  optionNotifer.updateOption(2);
                },
              ),
            ),
            Expanded(
              child: OptionWidget(
                leading: 'D',
                text: optionNotifer.options[3],
                selected: optionNotifer.selectedOption == 3,
                onTap: () {
                  optionNotifer.updateOption(3);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
