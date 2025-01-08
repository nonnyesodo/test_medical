import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/core/res/theme/theme.dart';
import 'package:medical_app/core/utils/session_manager.dart'; 
import 'package:shared_preferences/shared_preferences.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());

  final PageController pageController = PageController();

  int currentPage = 0;
  onPageChange({value}) {
    emit(OnboardLoadingState());
    currentPage = value;
    emit(OnboardLoadedState());
  }

  void nextPage() {
    emit(OnboardLoadingState());
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    currentPage = ((pageController.page?.toInt() ?? 0) + 1);
    emit(OnboardLoadedState());
  }

  ///navigate onboard Screen
  void prevPage() {
    emit(OnboardLoadingState());
    pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    currentPage = ((pageController.page?.toInt() ?? 0) - 1);

    emit(OnboardLoadedState());
  }

  ThemeData _currentTheme = AppTheme.lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() async {
    emit(OnboardLoadingState());
    if (_currentTheme == AppTheme.lightTheme) {
      _currentTheme = AppTheme.darkTheme;
      await saveThemeToPrefs('dark');
    } else {
      _currentTheme = AppTheme.lightTheme;
      await saveThemeToPrefs('light');
    }
    emit(OnboardLoadedState());
  }

  Future<void> saveThemeToPrefs(String theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('theme');
    if (theme != null) {
      if (theme == 'light') {
        _currentTheme = AppTheme.lightTheme;
      } else {
        _currentTheme = AppTheme.darkTheme;
      }
    }
  }

  checkNavigation() async {
    loadTheme();
    emit(OnboardLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    if (await SessionManager().checkNewUser()) {
      emit(OnboardNewUserState());
    } else if (await autoLogin()) {
      emit(OnboardAutoLoginState());
    } else {
      emit(OnboardLoginState());
    }
  }

  Future<bool> autoLogin() async {
    bool autoLogin = await SessionManager().fetchToken();
    return autoLogin;
  }
}
