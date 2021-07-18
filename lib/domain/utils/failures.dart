class AuthFailureException {
  const AuthFailureException._();
  const factory AuthFailureException.cancelledByUser(String message) =
      CancelledByUser;
  const factory AuthFailureException.serverError(String message) = ServerError;
  const factory AuthFailureException.emailAlreadyInUse(String message) =
      EmailAlreadyInUse;
  const factory AuthFailureException.invalidEmailAndPasswordCombination(
      String message) = InvalidEmailAndPasswordCombination;
}

class CancelledByUser extends AuthFailureException {
  final String message;
  const CancelledByUser(this.message) : super._();
}

class ServerError extends AuthFailureException {
  final String message;
  const ServerError(this.message) : super._();
}

class EmailAlreadyInUse extends AuthFailureException {
  final String message;
  const EmailAlreadyInUse(this.message) : super._();
}

class InvalidEmailAndPasswordCombination extends AuthFailureException {
  final String message;
  const InvalidEmailAndPasswordCombination(this.message) : super._();
}

