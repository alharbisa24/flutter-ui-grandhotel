
import 'package:finans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class Input extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String placeholder;
  final bool isPassword;
  const Input({
    Key? key,
    this.controller,
    this.validator,
    required this.placeholder,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}


class _InputState extends State<Input> {
  late bool isObsecured;

@override
void initState() {
  super.initState();
  isObsecured = widget.isPassword;  
}

  @override
  Widget build(BuildContext context) {



    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: isObsecured,
      decoration: InputDecoration(
isCollapsed:false,
isDense: false,

        labelText: widget.placeholder,
        labelStyle: TextStyle(
          color: ColorsManager.greyScale300,
          fontSize: 12.sp,
        ),
        
        filled: true,
        fillColor: ColorsManager.greyScale50,
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xFFF7F8F8),
            width: 0,
          ),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xFFF7F8F8),
            width: 0,
          ),
        ),
        
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        suffixIcon: widget.isPassword
            ? InkWell(
              onTap: (){
                  setState(() {
    isObsecured = !isObsecured;

  });
              },
              child:  Container(
                width: 24.w, 
  height: 24.h,
  alignment: Alignment.center, 
              child: HugeIcon(
              size: 24.w,
                color: Colors.black,
                 icon: isObsecured ? HugeIcons.strokeRoundedViewOffSlash : HugeIcons.strokeRoundedView,
              ),
            ),
            )
            : null,
        
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        
       
      ),
    );
  }
}
