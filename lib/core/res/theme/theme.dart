 
import 'package:medical_app/global_widget/export.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    sliderTheme: SliderThemeData(
        valueIndicatorTextStyle: GoogleFonts.exo(fontSize: 12.sp),
        showValueIndicator: ShowValueIndicator.always),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: TextTheme(bodyLarge: TextStyle(color: AppColors.black)),
    appBarTheme: AppBarTheme(
        color: AppColors.white, iconTheme: IconThemeData(color: Colors.white)),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    sliderTheme: SliderThemeData(
        valueIndicatorTextStyle: GoogleFonts.exo(fontSize: 12.sp),
        showValueIndicator: ShowValueIndicator.always),
    textTheme: TextTheme(bodyLarge: TextStyle(color: AppColors.white)),
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: AppBarTheme(
        color: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.white)),
  );
}
