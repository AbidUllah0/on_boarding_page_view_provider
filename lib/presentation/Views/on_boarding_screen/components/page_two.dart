import 'package:flutter/material.dart';
import 'package:on_boarding_page_view/presentation/Views/on_boarding_screen/components/page_three.dart';

import '../../../../utils/app_images/app_images.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.PageTwo),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageThree(),
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
