import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypee/config/l10n/l10n.dart';

import 'package:hypee/features/home/cubit/home_cubit.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  SalomonBottomBarItem _barItem(
    String title,
    IconData iconData, {
    bool showBadge = false,
  }) =>
      SalomonBottomBarItem(
        icon: Badge(
          label: const Text('3'),
          isLabelVisible: showBadge,
          child: Icon(iconData),
        ),
        title: Text(title),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),
          child: SafeArea(
            child: SalomonBottomBar(
              currentIndex: state,
              onTap: (index) => context.read<HomeCubit>().onTabChange(index),
              items: [
                _barItem(
                  context.l10n.labelNavbarHome,
                  HeroIcons.home,
                ),
                _barItem(
                  context.l10n.labelNavbarSearch,
                  HeroIcons.magnifying_glass,
                ),
                _barItem(
                  context.l10n.labelNavbarSell,
                  HeroIcons.plus_circle,
                ),
                _barItem(
                  context.l10n.labelNavbarMessages,
                  HeroIcons.chat_bubble_left,
                  showBadge: true,
                ),
                _barItem(
                  context.l10n.labelNavbarOptions,
                  HeroIcons.ellipsis_horizontal,
                ),
              ],
              // currentIndex: key.currentState. ,
            ),
          ),
        );
      },
    );
  }
}
