import 'package:medical_app/global_widget/export.dart';

class AppTimer extends StatelessWidget {
  const AppTimer({super.key, required this.duration, this.onEnd});

  final int duration;
  final Function()? onEnd;
  @override
  Widget build(BuildContext context) {
    return TimerCountdown(
      onEnd: onEnd ?? () {},
      enableDescriptions: false,
      timeTextStyle:
          GoogleFonts.exo(fontWeight: FontWeight.w500, fontSize: 14.sp),
      format: CountDownTimerFormat.minutesSeconds,
      endTime: DateTime.now().add(
        Duration(minutes: duration),
      ),
    );
  }
}
