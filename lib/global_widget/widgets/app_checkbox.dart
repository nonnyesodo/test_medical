
import 'package:medical_app/global_widget/export.dart'; 

class AppCheckbox extends StatelessWidget {
  final bool status;
  final double? width, height, radius;
  final Function()? ontap;

  const AppCheckbox(
      {super.key,
      required this.status,
      this.width,
      this.height,
      this.radius,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width ?? 30.w,
        height: height ?? 30.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          color: status ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(radius ?? 5.r),
        ),
        child: Icon(
          Icons.done,
          color: AppColors.white,
        ),
      ),
    );
  }
}
