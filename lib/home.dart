import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_task/utils/extensions.dart';
import 'package:interview_task/utils/kTextStyle.dart';
import 'package:interview_task/widgets/details_section.dart';
import 'package:interview_task/widgets/header_widget.dart';
import 'package:interview_task/widgets/option_widget.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _loaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !_loaded
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/bg_image.png',
                      width: context.width,
                      height: 70.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Positioned(top: 50, child: HeaderWidget()),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: context.width,
                    height: 100.h,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black],
                        stops: [0.6, 0.7],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 5,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DetailsSection(),
                        SizedBox(height: 10),
                        OptionsBlock(),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pick your option.\nSee who has a similar mind",
                                style: kTextStyle(12, color: Color(0xffE5E5E5)),
                              ),
                              Row(
                                spacing: 5,
                                children: [
                                  SvgPicture.asset('assets/images/mic.svg'),
                                  SvgPicture.asset('assets/images/next.svg'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff0f1115),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/card.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/bonfire.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/chat.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/person.svg',
              width: 25,
              colorFilter: ColorFilter.mode(
                Color(0xff6f6e7c),
                BlendMode.srcATop,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
