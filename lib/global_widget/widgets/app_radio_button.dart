
 

import 'package:medical_app/global_widget/export.dart';

class AppRadioButton extends StatelessWidget {
  const AppRadioButton(
      {super.key,
      required this.size,
      required this.isActive,
      this.activeColor});

  final Size size;
  final bool isActive;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return AppshadowContainer(
        margin: EdgeInsets.zero,
        border: !isActive,
        borderColor:
            isActive ? activeColor ?? AppColors.redText : AppColors.textGray0,
        color: isActive ? activeColor ?? AppColors.redText : Colors.transparent,
        radius: 200.r,
        padding: EdgeInsets.all(size.width * 0.005),
        child: Icon(Icons.circle,
            color: isActive ? AppColors.white : Colors.transparent,
            size: 12.sp));
  }
}
