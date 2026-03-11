import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/core/constant/theme.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/view/screen/homepage.dart';
import 'package:pro_1/view/screen/onboaarding.dart';
void main() {
    runApp(BlocProvider(
    create: (_) => ThemeCubit(),
    child: const MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
       providers: [
        BlocProvider(create: (context) => HomeCubit(),),
        BlocProvider(create: (context) => OnboardingCubit(),)
       ],
      child:BlocBuilder<ThemeCubit,ThemeData>(builder:(context,theme) {
        return MaterialApp(
        theme: theme,
        home: OnBoaarding(),
        );
      } ,) 
      );
  }
}
