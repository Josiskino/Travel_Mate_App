import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/onboarding_screen.dart';
import 'package:myapp/onboarding_screen_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingScreenBloc(),
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          routes: {
            'homePage': (context) =>
                const HomePage(), // Remplacez HomePage par votre widget de la page d'accueil
          },
          debugShowCheckedModeBanner: false,
          home: OnboardingScreen(),
        ),
      ),
    );
  }
}
