part of 'onboard_cubit.dart';

@immutable
sealed class OnboardState {}

final class OnboardInitial extends OnboardState {}

final class OnboardLoadingState extends OnboardState {}

final class OnboardLoadedState extends OnboardState {}

final class OnboardNewUserState extends OnboardState {}

final class OnboardLoginState extends OnboardState {}

final class OnboardAutoLoginState extends OnboardState {}
