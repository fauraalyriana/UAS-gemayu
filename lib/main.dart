import 'package:flutter/material.dart';
import 'Component/splashscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pages/mainstate.dart';
import 'bloc/login_bloc.dart';
import 'repository/login_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => LoginRepository()),
        ],
        child: MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: ((context) => LoginBloc(
                      loginRepository: context.read<LoginRepository>())
                    ..add(LoginInitialEvent()))),
            ],
            child: MaterialApp(
              title: "Gemayu",
              home: MainState(),
            )));
  }
}
