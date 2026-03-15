import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/core/constant/theme.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/view/screen/homescreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



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
        BlocProvider(create: (context) => HomescreenCubit(),),
        BlocProvider(create: (context) => OnboardingCubit(),),
        BlocProvider(create: (context) => WorkerHomepageCubit())
       ],
      child:BlocBuilder<ThemeCubit,ThemeData>(builder:(context,theme) {
        return MaterialApp(
          locale:  Locale('ar'),
          supportedLocales: [
        Locale('ar'),
      ],
      localizationsDelegates: [
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
],
     
        theme: theme,
        home: Homescreen(),
        );
      } ,) 
      );
  }
}
