import '../../../../data/repository/auth/auth_repository.dart';
import '../../../../utils/command.dart';

import '../../../../utils/result.dart';

class LoginViewmodel {
  LoginViewmodel({required AuthRepository auth})
    : authRepository = auth {
      login = Command1<void, (String email, String password)>(_login);
    }
  final AuthRepository authRepository;
  late Command1 login;

  Future<Result<void>> _login((String, String) credintails) async {
    final (username, password) = credintails;
    final result = await authRepository.login(
      username: username, 
      password: password
    );

    if (result is Error<void>) {
      // log error
    }

    return result;

  }
}