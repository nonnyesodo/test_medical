 
import 'package:medical_app/global_widget/export.dart'; 
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRoute {
  // GoRouter configuration
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [
      // GoRoute(
      //     path: RouteName.splash.path,
      //     builder: (context, state) {
      //       return SplashScreen(isRedBackground: true);
      //     }),
       
    ],
  );
}
