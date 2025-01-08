import 'package:medical_app/global_widget/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.verticalSpace,
          Row(
            children: [
              AppExoText(text: 'hi', fontSize: 18, fontWeight: FontWeight.w600),
              AppExoText(text: '  ', fontSize: 18, fontWeight: FontWeight.w600),
              AppExoText(
                  text: 'let_chop', fontSize: 18, fontWeight: FontWeight.w600),
              Spacer(),
              GestureDetector(
                  onTap: () {
                     
                  },
                  child: Icon(Icons.notifications_outlined, size: 25.sp))
            ],
          ),
          20.verticalSpace, 
          20.verticalSpace,
          20.verticalSpace,
          AppExoText(
              text: 'activities_feed',
              fontSize: 20,
              fontWeight: FontWeight.w600),
          10.verticalSpace,
          
        ],
      ),
    ));
  }
}
