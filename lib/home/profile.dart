import 'dart:ui';

import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/notifications_setting.dart';
import 'package:finans/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            SizedBox(
            height: 32.h,
          ),
          
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      "assets/images/avatar.png"
                    ),
                  ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Brooklyn Simmons", style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700
                  ),),
                  Text("@Broklyn", style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.greyScale400
                  ),)
                ],
              ),
                  ],
              ),
              HugeIcon(icon: 
              HugeIcons.strokeRoundedEdit01)
            ],
          ),

          SizedBox(
            height: 24.h,
          ),

          Text("Setting", style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: ColorsManager.greyScale300
          ),),
          SizedBox(
            height: 20.h,
          ),


          settingElement(HugeIcons.strokeRoundedWallet01, "Your Card"),
          Divider(),
          settingElement(HugeIcons.strokeRoundedShield02, "Security"),
          Divider(),
          settingElement(HugeIcons.strokeRoundedNotification01, "Notification", onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NotificationsSettingPage())
            );
          }),
          Divider(),
          settingElement(HugeIcons.strokeRoundedEarth, "Languages"),
          Divider(),
          settingElement(HugeIcons.strokeRoundedInformationCircle, "Help and Support"),
          Divider(),

 
          InkWell(
            onTap: (){

showDialog(
  context: context,
  barrierColor: ColorsManager.greyScale100.withOpacity(0.2),
  builder: (context) => BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    child: AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HugeIcon(
            icon: HugeIcons.strokeRoundedAlertCircle,
            color: Colors.red,
            size: 80.sp,
          ),
          SizedBox(height: 16.h),
          Text(
            "Are You Sure?",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Do you want to log out ?",
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorsManager.greyScale500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
         Row(
  children: [
     Expanded(
      child: logoutButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        content: Text(
          "Log Out",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
    ),
    SizedBox(width: 12),

    Expanded(
      child: Button(
        onPressed: () {
          Navigator.of(context).pop();
        },
        content: Text(
          "Cancel",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
   
  ],
)

        ],
      ),
    ),
  ),
);

            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 14.h
              ),
              child: Center(
                child: Text("Logout", style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.red
                ),),
              ),
            ),
          )

          ],
        ),
      )),
    );
  }
}

Widget settingElement(List<List<dynamic>> icon, String name, {VoidCallback? onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 20.h
      ),
      child: Row(
        children: [
          HugeIcon(icon: 
          icon),
          SizedBox(width: 12.w,),
          Text(name, style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),)
    
        ],
      ),
    ),
  );
}

Widget logoutButton({required VoidCallback onPressed, Widget? content}){
  return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: BoxBorder.all(
          color: Colors.red,
          width: 1
        )
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