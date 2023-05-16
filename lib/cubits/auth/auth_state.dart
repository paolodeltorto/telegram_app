part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class LoadingAuthenticationState extends AuthState {}

class AutenticatedState extends AuthState {
  final User user;

  const AutenticatedState(this.user);

  @override
  List<Object> get props => [user];
}

class NotAutehnticatedState extends AuthState {}
