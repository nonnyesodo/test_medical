import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/splash_onboard/presentation/bloc/cubit/onboard_cubit.dart'; 
import '../../../../core/res/theme/colors.dart';
import '../../../../global_widget/widgets/appshadowcontainer.dart';

class OnboardIndicator extends StatelessWidget {
  const OnboardIndicator({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    final watchOnboard = context.watch<OnboardCubit>();
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            3,
            (index) => AppshadowContainer(
                margin: EdgeInsets.only(right: size.width * 0.01),
                width: size.width * 0.08,
                height: size.width * 0.015,
                color: watchOnboard.currentPage == index
                    ? AppColors.yellow
                    : AppColors.textGray0)));
  }
}
