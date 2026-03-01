import 'package:go_router/go_router.dart';
import 'package:lodise_app/ui/core/root_layout.dart';
import 'package:lodise_app/ui/profile/view_model/profile_viewmodel.dart';
import 'package:lodise_app/ui/profile/widgets/profile_screen.dart';
import '../ui/home/view_model/home_view_model.dart';
import '../ui/home/widgets/home_screen.dart';
import 'routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) => RootLayout(child: child),
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) => HomeScreen(viewModel: HomeViewModel()),
        ),
        GoRoute(
          path: Routes.profile,
          builder: (context, state) =>
              ProfileScreen(viewModel: ProfileViewModel()),
        ),
      ],
    ),
  ],
);
