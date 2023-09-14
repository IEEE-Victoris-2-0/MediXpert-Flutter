import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecdoc/api/api.dart';
import 'package:tecdoc/controller/medi_bloc.dart';
import 'package:tecdoc/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MediBloc(UserAPI()),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "midxipert",
          home:OnBoardingScreen()),
    );
  }
}
