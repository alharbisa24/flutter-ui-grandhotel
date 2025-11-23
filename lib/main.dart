import 'package:finans/onboarding/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'NetPay',
      theme: ThemeData(
    textTheme: GoogleFonts.interTextTheme(),
  colorSchemeSeed: Colors.white,
      ),
      home: const SplashScreen(),
    ),
        );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(3.seconds, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnBoarding1Widget()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SvgPicture.asset(
          'assets/splash.svg',
        )
        .animate()
        .fadeIn(duration: 800.ms)
        .slide(begin: Offset(0, 0.2), curve: Curves.easeOut),
      ),
    );
  }
}
