import '../../../utils/result.dart';
import '../auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  
  @override
  Future<bool> get isAuthenticaed => Future.value(true);

  @override
  Future<Result<void>> login({required String username, required String password}) async {
    return Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    return Result.ok(null);
  }
}