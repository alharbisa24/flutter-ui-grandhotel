import 'package:finans/auth/otp.dart';
import 'package:finans/auth/register.dart';
import 'package:finans/core/theming/colors.dart';
import 'package:finans/widgets/button.dart';
import 'package:finans/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

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
                  Text("Let’s Sign you in", style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Text("Lorem ipsum dolor sit amet, consectetur", style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.greyScale500
                  ),)
                ],
              ),),

              SizedBox(
                height: 30.h,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email Address"),
                  SizedBox(height: 8.h),
                  Input(placeholder: "Enter your email address"),
                  SizedBox(
                    height: 16.h,
                  ),

                  Text("Password"),
                  SizedBox(height: 8.h),
                  Input(placeholder: "Enter your password", isPassword: true,)
                ],
              ),
              SizedBox(
                height: 16.h,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberValue, 
                      onChanged: (val){
                        setState(() {
                          rememberValue = val!;
                        });
                      }, 

                      activeColor: ColorsManager.mainBlue,
                      

                      
                      side: BorderSide(
                        color: ColorsManager.greyScale300
                      ),
                      
                      
                        visualDensity: VisualDensity.compact, 
  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
                      ),
                    Text("Remember Me"),
                  ],),

                  Text("Forget Password", style: TextStyle(
                    color: Colors.red
                  ))
            
          ],),
          SizedBox(
            height: 24.h,
          ),
          Button(onPressed: (){

                 Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => OTPWidget())
            );
          }, content: Text("Sign In", style: TextStyle(
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
                Text("Don't have an account?", style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorsManager.greyScale500,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 5.w),

                InkWell(
                  onTap: (){
                         Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RegisterWidget()));
                  },
                  
                
                child: Text("Sign Up", style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ))
                )
              ],),


  SizedBox(
                height: 24.h,
              ),
               Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      'Or Sign In with',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 24.h,
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialWidget(imageUrl: "assets/images/google.png"),

                  SizedBox(width: 30.w),

                  SocialWidget(imageUrl: "assets/images/apple.png"),

                  SizedBox(width: 30.w),

                  SocialWidget(imageUrl: "assets/images/facebook.png")

                ],
              ),

                  SizedBox(height: 46.h),

RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
    text: "By signing up you agree to our ",
    style: TextStyle(
      color: Colors.grey, 
      fontSize: 14,
    ),
    children: [
      TextSpan(
        text: "Terms",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      TextSpan(
        text: " and ",
      ),
      TextSpan(
        text: "Conditions of Use",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
)

          
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
                   SizedBox(
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