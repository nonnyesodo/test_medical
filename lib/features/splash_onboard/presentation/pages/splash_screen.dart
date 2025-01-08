import 'package:medical_app/core/config/page_route/route_name.dart';
import 'package:medical_app/core/res/theme/assets.dart';
import 'package:medical_app/features/splash_onboard/presentation/bloc/cubit/onboard_cubit.dart';
import 'package:medical_app/global_widget/export.dart'; 

class SplashScreen extends StatefulWidget {
  final bool isRedBackground;

  const SplashScreen({super.key, required this.isRedBackground});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  double _opacity = 0.0; // Initial opacity is 0.0 (fully transparent)

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();

    // Trigger the animation after a short delay
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0; // Fade in
      });
    });

    // Navigate to the appropriate screen after splash duration
    context.read<OnboardCubit>().checkNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardCubit, OnboardState>(
      listener: (context, state) {
        if (state is OnboardNewUserState) {
          context.go(RouteName.onboarding.path);
        }
        if (state is OnboardLoginState) {
          context.go(RouteName.login.path);
        }
        if (state is OnboardAutoLoginState) {
          context.go(RouteName.botomNav.path);
        }
      },
      child: Scaffold(
          backgroundColor: AppColors.redBackground,
          body: FadeTransition(
              opacity: _fadeAnimation,
              child: Center(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.splashLogoForRedBg, height: 120.h),
                      const SizedBox(height: 32),
                      AnimatedOpacity(
                        opacity: _opacity,
                        duration: const Duration(seconds: 2),
                        child: Text('splash_text',
                            style: GoogleFonts.notoSansThai(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp,
                                color: AppColors.white),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
