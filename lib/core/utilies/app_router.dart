

import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/register_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/auth/presentation/views/verify_view.dart';
import '../../features/home/views/homePage.dart';
import '../../features/pay_history/presentation/views/history1_view.dart';
import '../../features/payment/presentation/views/pay_card.dart';
import '../../features/payment/presentation/views/success_view.dart';
import '../../features/services_home/presentation/views/home_view.dart';
import '../../features/services_home/presentation/views/widgets/bottom_nav.dart';




abstract class AppRouter{
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context , state) => const  HomePage(),
    ),
    GoRoute(
      path: '/signView',
      builder: (context , state) => const SignUpView(),
    ),

    GoRoute(
      path: '/payHistory',
      builder: (context , state) => const PayHistoryView()
    ),
    GoRoute(
      path: '/bottomNav',
      builder: (context , state) => const BottomNavBar(),
    ),
    GoRoute(
      path: '/registerView',
      builder: (context , state) => const RegisterView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context , state) => const HomeView(),
    ),
    GoRoute(
      path: '/verifyView',
      builder: (context , state) => const VerifyView(),
    ),
    GoRoute(
        path: '/successView',
      builder: (context , state) => const SuccessView()
    ),
    GoRoute(
        path: '/payCardView',
        builder: (context , state) => const PayCardView()
    ),
  ]);
}