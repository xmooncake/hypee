import 'package:bloc/bloc.dart';

import 'package:hypee/features/dashboard/dashboard.screen.dart';
import 'package:hypee/features/messages/messages.view.dart';
import 'package:hypee/features/profile/profile.view.dart';
import 'package:hypee/features/search/search.view.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  final screens = [
    const DashboardView(),
    const SearchView(),
    const MessagesView(),
    const ProfileView(),
  ];

  void onTabChange(int index) => emit(index);
}
