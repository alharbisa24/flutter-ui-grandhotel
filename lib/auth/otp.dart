import 'dart:ui';

import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/home.dart';
import 'package:finans/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:pinput/pinput.dart';

class OTPWidget extends StatefulWidget {
  const OTPWidget({super.key});

  @override
  State<OTPWidget> createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {

  bool rememberValue= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
          EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 8.h

          ),
          child: Column(
         crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();

              } ,              
              
              style: TextButton.styleFrom(
    padding: EdgeInsets.zero, 
    minimumSize: Size(0, 0), 
    tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
  ) ,
  
  child: 
              HugeIcon(icon: HugeIcons.strokeRoundedArrowLeft01),
 
              ),

              SizedBox(
                height: 24.h,

              ),

              Center(child: Column(
                children: [
                  Text("Enter OTP", style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:"We have just sent you 4 digit code via your email ",
                    style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.greyScale500
                  ),
                  children: [
                    TextSpan(
                      text: "example@gmail.com",
                      style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.greyScale500   
                      )
                    )

                  ]
                  )
                  
                  )
              

                ],
              ),),

              SizedBox(
                height: 30.h,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Center(
        child: Pinput(
          
          length: 4,
          keyboardType: TextInputType.number,
          defaultPinTheme: PinTheme(
            height: 60.h,
            width: 60.w,
            textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: ColorsManager.greyScale50,
            ),
          ),
          focusedPinTheme: PinTheme(
            height: 60.h,
            width: 60.w,
            textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: ColorsManager.greyScale0,
              border: Border.all(color: Colors.blue),
            ),
),
          onCompleted: (value) {
            print("OTP: $value");
          },
        ),
      ),
    

                ],
              ),
              SizedBox(
                height: 40.h,
              ),


          Button(onPressed: (){

showDialog(
  context: context,
  barrierColor: Colors.black.withOpacity(0.5),
  builder: (context) => BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    child: AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 80.sp,
          ),
          SizedBox(height: 16.h),
          Text(
            "Success!",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "OTP verified successfully",
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorsManager.greyScale500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          Button(
            onPressed: () {
              Navigator.of(context).pop();

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeWidget())
              );
            },
            content: Text(
              "Continue",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);

            
          }, content: Text("Continue", style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),),

              SizedBox(
                height: 24.h,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                Text("Didn’t receive code?", style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorsManager.greyScale500,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 5.w),

                InkWell(
                  onTap: (){
                  },
                
                child: Text("Resend Code", style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ))
                )
              ],),
              SizedBox(
                height: 24.h,
              ),



        

                  SizedBox(height: 46.h),


          
          ],
          ),
        )
      ),
    );
  }
}

class SocialWidget extends StatelessWidget {

  final String imageUrl;
  const SocialWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 10.w
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200] ?? Colors.grey,
                        width: 2
                      ),
                      color: ColorsManager.greyScale50,
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: TextButton(onPressed: (){},
                   child: 
                   Container(
  width: 25.w,  
  height: 25.h,
  child: Image.asset(
    imageUrl,
    width: 25.w,
    height: 25.h,
    fit: BoxFit.contain,
  ),
)
                    ,
                    
                  ),
                    );
    }
          
                   
                
                  
}