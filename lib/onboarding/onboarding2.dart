import 'package:finans/core/theming/colors.dart';
import 'package:finans/onboarding/onboarding3.dart';
import 'package:finans/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding2Widget extends StatelessWidget {
  const OnBoarding2Widget({super.key});


  @override
  Widget build(BuildContext context) {
int currentPage = 1;
    return Scaffold(
      body: Scaffold(
        body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboarding2_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        
         child: Center(
          child:
          Padding(
            padding: EdgeInsets.all(
              28
            ),
         
        child:
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Book with Ease, Stay with Style",
              style: TextStyle(
                fontSize: 28.02.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center),
              SizedBox(
                height: 8.h,
              ),

              Text("Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ", style: TextStyle(
                fontSize: 14.sp,
                color: ColorsManager.greyScale25,
                fontWeight: FontWeight.normal
                
              ),
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24.h,
              ),
              OnboardingSliderIndicator(
  currentIndex: currentPage,
  itemCount: 3,
),

   SizedBox(
                height: 20.h,
              ),

              Button(onPressed: (){
Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => OnBoarding3Widget())
);
              }, content: Text("Continue", style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),)),

              SizedBox(
                height: 30.h,
              )


            ],
          ),
        ),
        )
      ),
      )
    );
  }
}
class OnboardingSliderIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const OnboardingSliderIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        bool isActive = index == currentIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 24.w : 8.w,
          height: 10.h,
          decoration: BoxDecoration(
            color: isActive ? ColorsManager.primary800 : Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}