
import 'package:finans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget content;

  const Button({super.key, required this.onPressed, required this.content});

  @override
  Widget build(BuildContext context) {
       return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsManager.primary800,
        borderRadius: BorderRadius.circular(12),
      ),
       child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 13.h),
        ),
        child:content
      ),
    )
       );
  }
}