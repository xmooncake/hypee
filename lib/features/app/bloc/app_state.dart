part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState({
    this.isAuthenticated = false,
  });

  final bool isAuthenticated;

  
  @override
  List<Object> get props => [isAuthenticated];

}
