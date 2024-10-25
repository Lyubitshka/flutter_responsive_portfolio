import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/core/configs/connection/bloc/connected_bloc.dart';
import 'package:web_presentation/core/configs/connection/network_check.dart';
import 'package:web_presentation/core/providers/drawer_provider.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class MySite extends StatelessWidget {
  const MySite({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectedBloc>(
          create: (context) => ConnectedBloc(),
        )
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: ResponsiveApp(builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'My Portfolio',
            initialRoute: '/',
            routes: {'/': (context) => const NChecking()},
          );
        }),
      ),
    );
  }
}
