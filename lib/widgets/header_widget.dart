import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_task/utils/extensions.dart';
import 'package:interview_task/utils/kTextStyle.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Center(
        child: Column(
          children: [
            Row(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Stroll Bonfire",
                  style:
                      kTextStyle(
                        34,
                        color: Color(0xffCCC8FF),
                        fontWeight: FontWeight.w700,
                      ).copyWith(
                        shadows: [
                          Shadow(
                            color: Colors.black.withValues(alpha: 0.7),
                            blurRadius: 9,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffCCC8FF),
                    size: 15,
                    shadows: [
                      Shadow(
                        color: Colors.black.withValues(alpha: 0.5),
                        blurRadius: 8,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/alarm.svg'),
                Text(
                  "22h 00m",
                  style:
                      kTextStyle(
                        12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ).copyWith(
                        shadows: [
                          Shadow(
                            color: Colors.black.withValues(alpha: 0.5),
                            blurRadius: 8,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset('assets/images/person.svg'),
                Text(
                  "103",
                  style:
                      kTextStyle(
                        12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ).copyWith(
                        shadows: [
                          Shadow(
                            color: Colors.black.withValues(alpha: 0.5),
                            blurRadius: 8,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
