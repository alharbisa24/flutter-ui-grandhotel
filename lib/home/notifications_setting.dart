import 'package:finans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsSettingPage extends StatefulWidget {
  const NotificationsSettingPage({super.key});

  @override
  State<NotificationsSettingPage> createState() => _NotificationsSettingPageState();
}

class _NotificationsSettingPageState extends State<NotificationsSettingPage> {
    Map<String, bool> switches = {
    "New Event": false,
    "Delivery": false,
    "Message": false,
    "Payment": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
                Row(
               children: [
                 IconButton(
                       icon: Icon(Icons.arrow_back, color: Colors.black),
                       onPressed: () => Navigator.pop(context),
                 ),
                       
                 Expanded(
                       child: Text(
                         "Notifications",
                         style: TextStyle(
                           fontSize: 18.sp,
                           fontWeight: FontWeight.w600,
                           color: Colors.black,
                         ),
                         textAlign: TextAlign.center,
                       ),
                 ),
                       
                 Opacity(
                       opacity: 0,
                       child: IconButton(
             icon: Icon(Icons.arrow_back), 
             onPressed: null,
                       ),
                 ),
               ],
             ),

             SizedBox(
              height: 24.h,
             ),

             SizedBox(
  width: double.infinity,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: ColorsManager.greyScale300),
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Messages Notifications",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: ColorsManager.greyScale200,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),

notificationType(
  "New Event",
  switches["New Event"]!,
  (v) => setState(() => switches["New Event"] = v),
),
notificationType(
  "Delivery",
  switches["Delivery"]!,
  (v) => setState(() => switches["Delivery"] = v),
),
notificationType(
  "Message",
  switches["Message"]!,
  (v) => setState(() => switches["Message"] = v),
),
notificationType(
  "Payment",
  switches["Payment"]!,
  (v) => setState(() => switches["Payment"] = v),
),


        
      ],
    ),
  ),
)
          ],
        ),
      )),
    );
  }
}

Widget notificationType(String name, bool value, Function(bool) onChanged) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(name),
      Switch(
        value: value,
        onChanged: onChanged,
        activeTrackColor: ColorsManager.mainBlue.withOpacity(0.1),
        activeThumbColor: ColorsManager.mainBlue,
        inactiveThumbColor: Colors.grey,
        inactiveTrackColor: Colors.grey.withOpacity(0.1),
        trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
      ),
    ],
  );
}