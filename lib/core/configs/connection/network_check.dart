import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:web_presentation/app/sections/main/main_section.dart';
import 'package:web_presentation/core/configs/connection/bloc/connected_bloc.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class NChecking extends StatelessWidget {
  const NChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
        builder: (context, state) {
          final scrollProvider = Provider.of<ScrollProvider>(context);
          if (state is ConnectedSucessState) {
            return MainPage(
              scrollProvider: scrollProvider,
            );
          } else {
            return MainPage(
              scrollProvider: scrollProvider,
            );
          }
        },
        listener: (context, state) {});
  }
}

class NoConnectionError extends StatelessWidget {
  const NoConnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Connection failed...'),
          ],
        ),
      ),
    );
  }
}
