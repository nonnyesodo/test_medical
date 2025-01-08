 
import 'package:medical_app/features/splash_onboard/presentation/bloc/cubit/onboard_cubit.dart';
import 'package:medical_app/global_widget/export.dart'; 
import '../../../../core/res/theme/assets.dart';
import '../widgets/first_onboard.dart';
import '../widgets/second_onboard.dart';
import '../widgets/third_onboard.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final watchOnboard = context.watch<OnboardCubit>();
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        child: Column(
          children: [
            // Logo at the top, center aligned
            Center(
                child: Image.asset(
                    Theme.of(context).brightness == Brightness.light
                        ? AppAssets.splashLogoForWhiteBg
                        : AppAssets.splashLogoForRedBg,
                    height: 100.h)),
            20.verticalSpace,
            Expanded(
                child: PageView(
                    onPageChanged: (value) {
                      context.read<OnboardCubit>().onPageChange(value: value);
                    },
                    physics: PageScrollPhysics(),
                    controller: watchOnboard.pageController,
                    children: [
                  FirstOnboardPage(size: size),
                  SecondOnboardPage(size: size),
                  ThirdOnboardPage(size: size)
                ])),
          ],
        ),
      ),
    );
  }
}
