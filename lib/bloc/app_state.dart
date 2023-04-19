part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

class AppState extends Equatable {
  const AppState._({
    required this.status,
    this.user = User.empty,
  });

  // jika user tidak kosong maka akan mengembalikan state authenticated
  const AppState.authenticated(User user)
      : this._(status: AppStatus.authenticated, user: user);

  // jika user tidak kosong maka akan mengembalikan state unauthenticated
  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  final AppStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}
