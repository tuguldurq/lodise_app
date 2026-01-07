import 'package:go_router/go_router.dart';
import 'package:lodise_app/data/repository/auth/auth_repository_impl.dart';

import '../ui/auth/login/view_models/login_viewmodel.dart';
import '../ui/auth/login/widgets/login_screen.dart';
import 'routes.dart';

final auth = AuthRepositoryImpl();

GoRouter router() => GoRouter(
  initialLocation: Routes.login,
  refreshListenable: auth,
  routes: [
    GoRoute(
      path: Routes.login, 
      builder: (context, state) {
        return LoginScreen(
          viewModel: LoginViewmodel(auth: auth)
        );
      }
    ),
  ]
);