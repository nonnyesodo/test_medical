 
import 'package:medical_app/core/utils/extension.dart';
import 'package:medical_app/global_widget/export.dart';

class IconWithTiitle extends StatelessWidget {
  const IconWithTiitle({super.key, this.icon, required this.title, this.image, this.imageSize});

  final IconData? icon;
  final String title;
  final String? image;
  final double? imageSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
      child: Row(
        children: [
          image?.svg(fit: BoxFit.cover, height:imageSize?? 20.h) ??
              Icon(icon!, size: 25.sp, color: AppColors.redText),
          10.horizontalSpace,
          AppExoText(text: title, fontSize: 14, fontWeight: FontWeight.w500)
        ],
      ),
    );
  }
}
