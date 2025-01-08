enum RouteName {
  splash('/'),
  onboarding('/onboarding'),
  login('/login'),
  loginWithEmail('/login_with_email'),
  loginOtp('/login_otp'),
  confirmInfo('/confirm_info'),
  setupAccountInfo('/setup_account'),
  botomNav('/bottom_nav'),
  
  createSpace('/create_space');

  final String path;

  const RouteName(this.path);
}
