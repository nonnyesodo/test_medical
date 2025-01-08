import 'package:medical_app/core/config/page_route/route_name.dart';
 
import '../../../../global_widget/export.dart';
import 'onboard_indicator.dart';

class ThirdOnboardPage extends StatelessWidget {
  const ThirdOnboardPage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         
          20.verticalSpace,
          AppExoText(
              text: 'onboarding_title_3',
              fontWeight: FontWeight.w600,
              color: AppColors.redText,
              fontSize: 22),
          20.verticalSpace,
          AppPopinText(text: 'onboarding_desc_3', textAlign: TextAlign.center),
          20.verticalSpace,
          OnboardIndicator(size: size),
          50.verticalSpace,
          Appbutton(
              label: 'finish',
              onTap: () {
                context.go(RouteName.login.path);
              }),
          20.verticalSpace,
        ],
      ),
    );
  }
}
