import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth firebaseAuth;
  late StreamSubscription<User?> _streamSubscription;
  AuthCubit({required this.firebaseAuth})
      : super(LoadingAuthenticationState() as AuthState) {
    _streamSubscription = firebaseAuth.userChanges().listen(_onStateChanged);
  }
  void _onStateChanged(User? user) {
    if (user == null) {
      emit(NotAutehnticatedState());
      Fimber.d('User not autenticated');
    } else {
      emit(AutenticatedState(user) as AuthState);
      Fimber.d('User is authenticated: $user');
    }
  }

  @override
  Future<void> close() async {
    await _streamSubscription.cancel();
    return super.close();
  }

  void signOut() => firebaseAuth.signOut();
}
