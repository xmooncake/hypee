part of 'authentication_cubit.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitialState extends AuthenticationState {}

final class AuthenticationLoginState extends AuthenticationState {}

final class AuthenticationRegisterState extends AuthenticationState {}
