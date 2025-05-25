import 'package:flutter/material.dart';
import 'package:interview_task/utils/options_notifier.dart';
import 'package:interview_task/widgets/option_widget.dart';

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
