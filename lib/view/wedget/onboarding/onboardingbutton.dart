import 'package:flutter/material.dart';

class Onboardingbutton extends StatelessWidget {
  const Onboardingbutton({super.key, required this.text,required this.onPressed, this.foregroundColor, this.backgroundColor, });
  final String text ;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return   
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor:  foregroundColor,
                      backgroundColor: backgroundColor

                    ) ,
                    onPressed: onPressed,
                    child: Text(text) ,),
                );
  }
}
