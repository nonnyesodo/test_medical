 
import 'package:medical_app/features/splash_onboard/presentation/bloc/cubit/onboard_cubit.dart';
import 'package:medical_app/global_widget/export.dart'; 
import 'onboard_indicator.dart';

class SecondOnboardPage extends StatelessWidget {
  const SecondOnboardPage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Image.asset(
          //     Theme.of(context).brightness == Brightness.light
          //         ? AppAssets.announceMealImage
          //         : AppAssets.announceMealImageDark,
          //     height: size.height * 0.4),

          
          20.verticalSpace,
          AppExoText(
              text: 'onboarding_title_2',
              fontWeight: FontWeight.w600,
              color: AppColors.redText,
              fontSize: 22),
          20.verticalSpace,
          AppPopinText(text: 'onboarding_desc_2', textAlign: TextAlign.center),
          20.verticalSpace,
          OnboardIndicator(size: size),
          50.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Appbutton(
                  border: true,
                  borderColor: AppColors.redBackground,
                  buttonColor: Colors.transparent,
                  width: size.width * 0.4,
                  labelColor: AppColors.redBackground,
                  label: 'previous',
                  onTap: () {
                    context.read<OnboardCubit>().prevPage();
                  }),
              Appbutton(
                  width: size.width * 0.4,
                  label: 'next',
                  onTap: () {
                    context.read<OnboardCubit>().nextPage();
                  })
            ],
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
