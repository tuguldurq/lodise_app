import 'package:lodise_app/data/repository/auth/auth_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repository/auth/auth_repository_impl.dart';

List<SingleChildWidget> get providers {
  return [
    ChangeNotifierProvider(
      create: (context) => AuthRepositoryImpl() as AuthRepository
    )
  ];
}