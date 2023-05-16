part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class LoadingAuthenticationState {}

class AutenticatedState {
  final User user;

  AutenticatedState(this.user);

  List<Object?> get props => [user];
}

class NotAutehnticatedState extends AuthState {}
