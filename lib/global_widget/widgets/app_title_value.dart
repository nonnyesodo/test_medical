 
import 'package:medical_app/global_widget/export.dart';

class TitleAndValue extends StatelessWidget {
  const TitleAndValue(
      {super.key,
      required this.title,
      required this.value,
      this.total = false,
      this.visible = true});
  final String title, value;
  final bool total, visible;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Visibility(
      visible: visible,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size.width * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppExoText(
                text: title,
                fontWeight: total ? FontWeight.w600 : FontWeight.w400,
                fontSize: 14,
                color: total
                    ? AppColors.redText
                    : AppColors.blackOrWhite(context)),
            AppExoText(
                text: value,
                fontWeight: total ? FontWeight.w600 : FontWeight.w400,
                fontSize: 14),
          ],
        ),
      ),
    );
  }
}
