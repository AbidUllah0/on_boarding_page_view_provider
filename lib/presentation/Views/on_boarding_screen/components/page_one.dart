import 'package:flutter/material.dart';
import 'package:on_boarding_page_view/presentation/Views/on_boarding_screen/components/page_two.dart';
import 'package:on_boarding_page_view/utils/app_images/app_images.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.PageOne),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageTwo(),
                    ),
                  );
                },
                child: Text(
                  'Slide to Next',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
