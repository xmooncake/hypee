import 'package:bloc/bloc.dart';

import 'package:hypee/features/dashboard/dashboard.view.dart';
import 'package:hypee/features/messages/messages.view.dart';
import 'package:hypee/features/options/options.view.dart';
import 'package:hypee/features/search/search.view.dart';
import 'package:hypee/features/sell/sell.view.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  final screens = [
    const DashboardView(),
    const SearchView(),
    const SellView(),
    const MessagesView(),
    const OptionsView(),
  ];

  void onTabChange(int index) => emit(index);
}
