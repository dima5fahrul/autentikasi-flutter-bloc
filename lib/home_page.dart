import 'package:authentication_flutter_firebase_bloc/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(
                  const AppLogoutRequested(),
                ),
          ),
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photo ?? ''),
            ),
            const SizedBox(height: 4.0),
            Text(user.email ?? '', style: textTheme.titleLarge),
            const SizedBox(height: 4.0),
            Text(user.name ?? '', style: textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
