import 'package:flutter/material.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:authentication_flutter_firebase_bloc/app/app.dart';
import 'package:authentication_flutter_firebase_bloc/app/app_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  runApp(App(authenticationRepository: authenticationRepository));
}
