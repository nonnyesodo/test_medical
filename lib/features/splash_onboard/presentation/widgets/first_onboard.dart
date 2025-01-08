 
import 'package:medical_app/core/config/page_route/route_name.dart'; 
import 'package:medical_app/features/splash_onboard/presentation/bloc/cubit/onboard_cubit.dart';
import 'package:medical_app/global_widget/export.dart'; 

import 'onboard_indicator.dart';

class FirstOnboardPage extends StatelessWidget {
  const FirstOnboardPage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Image.asset(
        
          20.verticalSpace,
          AppExoText(
              text: "onboarding_title_1",
              fontWeight: FontWeight.w600,
              color: AppColors.redText,
              fontSize: 24),
          20.verticalSpace,
          AppPopinText(text: 'onboarding_desc_1', textAlign: TextAlign.center),
          20.verticalSpace,
          OnboardIndicator(size: size),
          30.verticalSpace,
          Appbutton(
              label: 'next',
              onTap: () {
                context.read<OnboardCubit>().nextPage();
              }),
          20.verticalSpace,
          GestureDetector(
              onTap: () {
                context.go(RouteName.login.path);
              },
              child: AppPopinText(
                  text: 'skip',
                  fontSize: 16,
                  color: AppColors.redBackground,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
