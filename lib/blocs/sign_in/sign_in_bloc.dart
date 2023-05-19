import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:telegram_app/repositories/authentication_repository.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthenticationRepository authenticationRepository;
  SignInBloc({
    required this.authenticationRepository,
  }) : super(InitialSignInState());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is PerformSignInEvent || event is PerformSignInWithGoogleEvent) {
      yield SigningInState();
      UserCredential? userCredential;
      try {
        userCredential = event is PerformSignInEvent
            ? await authenticationRepository.signIn(
                email: event.email,
                password: event.password,
              )
            : await authenticationRepository.signInWithGoogle();
      } catch (error) {
        yield ErrorSignInState();
      }
      if (userCredential != null) {
        yield SuccessSignInState(userCredential);
      }
    }
  }
}
