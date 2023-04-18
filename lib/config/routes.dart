import 'package:authentication_flutter_bloc/views/home_screen.dart';
import 'package:authentication_flutter_bloc/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:authentication_flutter_bloc/blocs/bloc/app_bloc.dart';

List<Page> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomeScreen.page()];
    case AppStatus.unauthenticated:
      return [LoginScreen.page()];
  }
}
