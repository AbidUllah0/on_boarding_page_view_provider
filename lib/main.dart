import 'package:flutter/material.dart';
import 'package:on_boarding_page_view/presentation/Views/on_boarding_screen/onboarding_view.dart';
import 'package:on_boarding_page_view/presentation/Views/on_boarding_screen/provider/onboarding_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OnBoardProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnBoardingView(),
      ),
    );
  }
}
