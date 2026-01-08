import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../data/repository/auth/auth_repository.dart';
import '../ui/auth/login/view_models/login_viewmodel.dart';
import '../ui/auth/login/widgets/login_screen.dart';
import 'routes.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
  initialLocation: Routes.login,
  refreshListenable: authRepository,
  routes: [
    GoRoute(
      path: Routes.login, 
      builder: (context, state) {
        return LoginScreen(
          viewModel: LoginViewmodel(auth: context.read())
        );
      }
    ),
  ]
);