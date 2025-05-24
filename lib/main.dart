import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_task/extensions.dart';
import 'package:interview_task/widgets/details_section.dart';
import 'package:interview_task/widgets/header_widget.dart';
import 'package:interview_task/kTextStyle.dart';
import 'package:interview_task/widgets/option_widget.dart';

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
    return MaterialApp(title: 'Flutter Demo', home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: context.height,
            width: context.width,
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),
          Positioned(top: 60, child: HeaderWidget()),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: context.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DetailsSection(),
                    SizedBox(height: 15),
                    OptionsBlock(),
                    SizedBox(height: 15),
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
            icon: SvgPicture.asset('assets/images/flame.svg'),
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
