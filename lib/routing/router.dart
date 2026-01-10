import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../data/repository/auth/auth_repository.dart';
import '../ui/auth/login/view_models/login_view_model.dart';
import '../ui/auth/login/widgets/login_screen.dart';
import '../ui/home/view_model/home_view_model.dart';
import '../ui/home/widgets/home_screen.dart';
import 'routes.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.login, 
      builder: (context, state) {
        return LoginScreen(
          viewModel: LoginViewmodel(auth: context.read())
        );
      }
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => 
        HomeScreen(viewModel: HomeViewModel()),
    ),
  ]
);