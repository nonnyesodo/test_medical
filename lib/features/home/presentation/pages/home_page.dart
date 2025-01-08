import 'package:medical_app/core/config/page_route/route_name.dart';
import 'package:medical_app/features/auth/presentation/bloc/cubit/auth_cubit.dart';
import 'package:medical_app/features/home/data/local/home_static_repo.dart';
import 'package:medical_app/global_widget/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppshadowContainer(
              radius: 20.r,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              color: AppColors.primaryColor.withValues(alpha: 0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Row(
                    children: [
                      AppNetwokImage(
                          height: size.width * 0.14,
                          width: size.width * 0.14,
                          radius: 200.r,
                          imageUrl: ""),
                      5.horizontalSpace,
                      SizedBox(
                        width: size.width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                AppExoText(
                                    text: 'Hi ',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                AppExoText(
                                    text: context
                                        .watch<AuthCubit>()
                                        .fullNameController
                                        .text
                                        .split(' ')
                                        .first,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ],
                            ),
                            AppExoText(
                                text: context
                                    .watch<AuthCubit>()
                                    .emailController
                                    .text,
                                fontSize: 14),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {},
                          child:
                              Icon(Icons.notifications_outlined, size: 25.sp))
                    ],
                  ),
                  20.verticalSpace,
                  AppExoText(
                      text: 'Let\'s Find \nYour Best Doctor!',
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                  ApptextField(hintText: 'search'),
                  20.verticalSpace,
                ],
              ),
            ),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    children: List.generate(
                        HomeStaticRepo.doctors.length,
                        (index) => GestureDetector(
                              onTap: () {
                                context.push(RouteName.doctoctDetail.path,
                                    extra: HomeStaticRepo.doctors[index]);
                              },
                              child: Column(
                                children: [
                                  AppNetwokImage(
                                      radius: 10.r,
                                      height: size.width * 0.5,
                                      fit: BoxFit.cover,
                                      width: size.width * 0.4,
                                      imageUrl:
                                          HomeStaticRepo.doctors[index].avatar),
                                  AppExoText(
                                      text: HomeStaticRepo.doctors[index].name,
                                      fontWeight: FontWeight.w700),
                                  AppExoText(
                                      text: HomeStaticRepo
                                          .doctors[index].specialty,
                                      fontSize: 14),
                                ],
                              ),
                            ))))
          ],
        ));
  }
}
