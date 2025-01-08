 

import 'package:medical_app/global_widget/export.dart';

class AppOTPInput extends StatelessWidget {
  const AppOTPInput(
      {super.key, required this.size, this.controller, this.onChange});

  final Size size;
  final TextEditingController? controller;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      onChanged: onChange,
      keyboardType: TextInputType.number,
      textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
      appContext: context,
      length: 6,
      obscureText: false,
      cursorColor: Colors.black,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5.r),
        fieldHeight: size.height * 0.055,
        borderWidth: size.width * 0.1,
        inactiveFillColor: Colors.transparent,
        selectedColor: AppColors.blackOrWhite(context),
        selectedFillColor: Colors.transparent,
        inactiveColor: AppColors.textGray0.withValues(alpha:0.3),
        fieldWidth: size.width * 0.12,
        activeColor: AppColors.textGray0.withValues(alpha:0.3),
        activeFillColor: Colors.transparent,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      // errorAnimationController: errorController,
      // controller: watchAuthProvider.otpController,

      beforeTextPaste: (text) {
        // log("Allowing to paste $text");
        return true;
      },
    );
  }
}
