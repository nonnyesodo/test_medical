import 'package:medical_app/features/home/data/model/doctor_model.dart';
import 'package:medical_app/global_widget/export.dart';

class DoctorDetailPage extends StatelessWidget {
  const DoctorDetailPage({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        children: [
          AppbarWidget(title: ''),
          20.verticalSpace,
          AppNetwokImage(
              height: size.width * 0.55,
              width: size.width,
              fit: BoxFit.cover,
              radius: 20.r,
              imageUrl: doctor.avatar),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppExoText(
                  text: doctor.name, fontSize: 18, fontWeight: FontWeight.w600),
              AppExoText(text: doctor.specialty),
            ],
          ),
          20.verticalSpace,
          Row(
            children: [
              Icon(Icons.star, color: AppColors.yellow, size: 20.sp),
              AppExoText(text: doctor.rating, fontWeight: FontWeight.w500),
              20.horizontalSpace,
              Icon(Icons.access_time_sharp,
                  color: AppColors.yellow, size: 20.sp),
              AppExoText(text: "${doctor.yearExperience} yrs Exp."),
            ],
          ),
          20.verticalSpace,
          AppExoText(text: doctor.bio, maxLines: 30),
          150.verticalSpace,
          Appbutton(label: 'Book Appointment')
        ],
      ),
    ));
  }
}
