import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/cubit/homecubit.dart';
import 'package:pro_1/view/screen/homepage.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => HomeCubit(),
      child: MaterialApp(home: Homepage(),),
      );
  }
}
