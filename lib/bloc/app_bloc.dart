import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          authenticationRepository.currentUser.isNotEmpty
              ? AppState.authenticated(authenticationRepository.currentUser)
              : const AppState.unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
    _userSubscription = authenticationRepository.user.listen(
      (user) => add(_AppUserChanged(user)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<User> _userSubscription;

  // Membuat method untuk mengubah state
  void _onUserChanged(_AppUserChanged event, Emitter<AppState> emit) {
    // jika user tidak kosong maka akan mengembalikan state authentication
    emit(event.user.isNotEmpty
        ? AppState.authenticated(event.user)
        : const AppState.unauthenticated());
  }

  // Membuat method untuk logout
  void _onLogoutRequested(
      AppLogoutRequested event, Emitter<AppState> emit) async {
    await _authenticationRepository.logOut();
  }

  @override
  // Membuat method untuk menutup stream
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
