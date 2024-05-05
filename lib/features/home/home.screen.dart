import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hypee/features/home/components/nav_bar.dart';
import 'package:hypee/features/home/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        bottomNavigationBar: const NavBar(),
        body: BlocBuilder<HomeCubit, int>(
          builder: (context, state) => context.read<HomeCubit>().screens[state],
        ),
      ),
    );
  }
}
