 
import 'package:medical_app/global_widget/export.dart';

class AppSuccessIcon extends StatelessWidget {
  const AppSuccessIcon({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AppshadowContainer(
            width: size.width * 0.3,
            height: size.width * 0.3,
            radius: 200.r,
            color: AppColors.green.withValues(alpha:0.3)
            // child: Icon(Icons.done, size: 50.sp, color: AppColors.white),
            ),
        AppshadowContainer(
          width: size.width * 0.25,
          height: size.width * 0.25,
          radius: 200.r,
          color: AppColors.green.withValues(alpha:0.5),
          // child: Icon(Icons.done, size: 50.sp, color: AppColors.white),
        ),
        AppshadowContainer(
          width: size.width * 0.2,
          height: size.width * 0.2,
          radius: 200.r,
          color: AppColors.green,
          shadowcolour: Colors.transparent,
          child: Icon(Icons.done, size: 50.sp, color: AppColors.white),
        ),
      ],
    );
  }
}
