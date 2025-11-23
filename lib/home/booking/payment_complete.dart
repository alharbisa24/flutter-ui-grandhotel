import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class PaymentCompleteWidget extends StatefulWidget {
  const PaymentCompleteWidget({super.key});

  @override
  State<PaymentCompleteWidget> createState() => _PaymentCompleteWidgetState();
}

class _PaymentCompleteWidgetState extends State<PaymentCompleteWidget> {
    @override
  void initState() {
    super.initState();

    Future.delayed(3.seconds, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeWidget()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainBackGround,
      body: SafeArea(
        child: 
      Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
                   
           Lottie.network(
                'https://lottie.host/af688763-3a40-4afd-ae10-517c5f776437/g3RwYb0OiV.json',
              ),
        
              Text("Payment Complete!", style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w800
              ),),
              Text("Etiam cras nec metus laoreet. Faucibus iaculis cras ut posuere.",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: ColorsManager.greyScale300
              ),
              textAlign: TextAlign.center,)
                 
              
               
            
          ],
        ),
      )
      ),
    );
  }
}