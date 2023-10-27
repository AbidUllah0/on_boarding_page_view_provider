import 'package:flutter/material.dart';
import 'package:on_boarding_page_view/presentation/Views/on_boarding_screen/provider/onboarding_provider.dart';
import 'package:provider/provider.dart';

import 'components/page_one.dart';
import 'components/page_three.dart';
import 'components/page_two.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController _pageController = PageController();
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Consumer<OnBoardProvider>(builder: (context, provider, child) {
            return PageView(
              physics: provider.isLast
                  ? NeverScrollableScrollPhysics()
                  : AlwaysScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (page) {
                provider.isLastSet = page == 2;
              },
              children: [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            );
          })
        ],
      ),
    );
  }
}
