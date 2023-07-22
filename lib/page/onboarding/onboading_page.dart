import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../bloc/check_bloc.dart';
import 'component/caouse_body.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var _curPageIndex = 0;
  bool onetime = false;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: BlocBuilder<CheckBloc, CheckState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Image.asset('assets/images/logo/logo.png'),
                ),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (value) {
                      print(value);
                      setState(() {
                        _curPageIndex = value;
                      });
                    },
                    children: const [
                      CarouselBodyWidget(
                        imagePath: 'assets/images/onboarding/onboarding1.png',
                        title: 'Nearby restaurants',
                        description:
                        'Don\'t have to go far to find a good restaurant',
                      ),
                      CarouselBodyWidget(
                        imagePath: 'assets/images/onboarding/onboarding2.png',
                        title: 'Convenient',
                        description: 'Online dish reservation',
                      ),
                      CarouselBodyWidget(
                        imagePath: 'assets/images/onboarding/onboarding3.png',
                        title: 'Delicious',
                        description: 'Enjoy great food with your family',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 26.0, right: 26.0, bottom: 24.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () async {
                              // final SharedPreferences prefs = await SharedPreferences.getInstance();
                              // await prefs.setBool('repeat', true);
                              // context.read<CheckBloc>().add(AlreadyOnBoardingEvent());
                              Navigator.pushNamed(context, 'home_page');
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF4B5563)),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (_curPageIndex == 0) {
                                return pageController.jumpToPage(1);
                              }
                              if (_curPageIndex == 1) {
                                return pageController.jumpToPage(2);
                              }
                              if (_curPageIndex == 2) {
                                final SharedPreferences prefs = await SharedPreferences.getInstance();
                                await prefs.setBool('repeat', true);
                                context.read<CheckBloc>().add(AlreadyOnBoardingEvent());
                                Navigator.pushNamed(context, 'home_page');
                              }
                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF999999),
                            ),
                          )
                        ],
                      ),
                      buildThreeDot(context)
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildThreeDot(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildDot(context: context, isSelected: _curPageIndex == 0),
        const SizedBox(
          width: 8,
        ),
        buildDot(context: context, isSelected: _curPageIndex == 1),
        const SizedBox(
          width: 8,
        ),
        buildDot(context: context, isSelected: _curPageIndex == 2),
      ],
    );
  }

  Widget buildDot({required BuildContext context, required bool isSelected}) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFAD3F32) : Colors.grey,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
