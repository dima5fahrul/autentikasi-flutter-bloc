// bloc observer
// Compare this snippet from lib\app\app_bloc_observer.dart:
import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    print(change);
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    print(bloc);
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    print(bloc);
    super.onClose(bloc);
  }
}

// Compare this snippet from lib\app\app.dart:
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:authentication_repository/authentication_repository.dart';

// import 'package:authentication_flutter_firebase_bloc/home_page.dart';

// import 'package:authentication_flutter_firebase_bloc/login_page.dart';
// import 'package:flow_builder/flow_builder.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// import 'package:authentication_flutter_firebase_bloc/theme.dart';

// class App extends StatelessWidget {
//   const App({
//     super.key,
//     required AuthenticationRepository authenticationRepository,
//   }) : _authenticationRepository = authenticationRepository;
