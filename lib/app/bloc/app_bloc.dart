import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hypee/app/router.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final router = AppRouter().router;
}
