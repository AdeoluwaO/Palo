import 'package:flutter/cupertino.dart';
import './app_route_exports.dart';

class RouteGenerator {
  static const moreScreen = 'more_screen';
  static const vehicleScreen = 'vehicle_screen';
  static const walletScreen = 'wallet_screen';
  static const widthdrawFundsScreen = 'widthdraw_funds_screen';
  static const transcationScreen = 'transaction_screen';
  static const myAccountScreen = 'my_account_screen';
  static const deleteAccountScreen = 'delete_account_screen';
  static const confirmDeleteAccountScreen = 'confirm_delete_account_screen';
  static const deleteAccountSuccessScreen = 'delete_account_success_screen';
  static const myProfileScreen = 'my_profile_screen';
  static const editProfileScreen = 'edit_screen';
  static const myWidthdrawalScreen = 'my_widthdrawal_screen';
  static const changePasswordScreen = 'change_password_screen';
  static const newPasswordScreen = 'new_password_screen';
  static const otpScreen = 'otp_screen';
  static const notificationsSettingsScreen = 'notifications_settings_screen';
  static const availabilityScreen = 'availability_screen';
  static const displayScreen = 'display_screen';
  static const helpAndSupportScreen = 'help_and_suport_screen';
  static const helpCenterScreen = 'help_center_screen';
  static const aboutScreen = 'about_screen';
  static const termAndConditionScreen = 'terms_and_contions_screen';
  static const privacyPolicyScreen = 'privay_policy_screen';
  static const chatsScreen = 'chats_screen';
  static const chatDetailsScreen = 'chat_details_screen';
  static const addWithdrawalScreen = 'add_withdrawal_account';
  static const forgotPasswordScreen = 'forgot_password_screen';
  static const enterNewPasswordScreen = 'enter_new_password_screen';
  static const checkYourEmailScreen = 'check_your_email_screen';
  static const orderNotificationsScreen = 'order_notification_screen.dart';
  static const ordersScreen = 'orders_screen';
  static const noRecentOrderScreen = 'no_recent_order_screen';
  static const orderDeliveryDetailScreen = 'order_detail_screen';
  static const orderSuccessScreen = 'order_success_screen';
  static const orderCancelledScreen = 'order_cancelled_screen';
  static const orderDetailsScreen = 'order_details_screen';
  static const onboardingScreen = 'onboarding_screen';
  static const loginScreen = 'login_screen';
  static const signupScreen = 'signup_screen';
  static const signupFormScreen = 'signup_form_screen';
  static const selectAccountScreen = 'select_account_screen';
  static const authOtpScreen = 'auth_otp_screen';
  static const createPasswordScreen = 'create_password_screen';
  static const updateAccountScreen = 'update_profile_screen';
  static const dashboardScreen = 'dashboard_screen';
  static const verifyEmailScreen = 'verify_email_screen';
  static const verifyEmailOtpScreen = 'verify_email_otp_screen';
  static const addProfilePhotoScreen = 'add_profile_photo_screen';
  static const addAccountWidthdrawalScreen = 'add_account_widthdrawal_screen';
  static const addVehicleScreen = 'add_vehicle_screen';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case moreScreen:
        return CupertinoPageRoute(
          builder: (context) => const MoreScreen(),
        );
      case vehicleScreen:
        return CupertinoPageRoute(
          builder: (context) => const VehicleScreen(),
        );
      case walletScreen:
        return CupertinoPageRoute(
          builder: (context) => const WalletScreen(),
        );
      case widthdrawFundsScreen:
        return CupertinoPageRoute(
          builder: (context) => const WidthdrawFundsScreen(),
        );
      case transcationScreen:
        return CupertinoPageRoute(
          builder: (context) => const TransactionScreen(),
        );
      case myAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyAccountScreen(),
        );
      case myProfileScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyProfileScreen(),
        );
      case editProfileScreen:
        return CupertinoPageRoute(
          builder: (context) => const EditProfileScreen(),
        );
      case myWidthdrawalScreen:
        return CupertinoPageRoute(
          builder: (context) => const MyWidthdrawalScreen(),
        );
      case changePasswordScreen:
        return CupertinoPageRoute(
          builder: (context) => const ChangePawwordScreen(),
        );
      case newPasswordScreen:
        return CupertinoPageRoute(
          builder: (context) => const NewPasswordScreen(),
        );
      case otpScreen:
        return CupertinoPageRoute(
          builder: (context) => const OtpScreen(),
        );
      case deleteAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const DeleteAccountScreen(),
        );
      case confirmDeleteAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const ConfirmDeleteccountScreen(),
        );
      case deleteAccountSuccessScreen:
        return CupertinoPageRoute(
          builder: (context) => const DeleteAccountSuccessScreen(),
        );
      case notificationsSettingsScreen:
        return CupertinoPageRoute(
          builder: (context) => const NotificationSettingsScreen(),
        );
      case availabilityScreen:
        return CupertinoPageRoute(
          builder: (context) => const AvailabilityScreen(),
        );
      case displayScreen:
        return CupertinoPageRoute(
          builder: (context) => const DisplayScreen(),
        );
      case helpAndSupportScreen:
        return CupertinoPageRoute(
          builder: (context) => const HelpAndSupportScreen(),
        );
      case helpCenterScreen:
        return CupertinoPageRoute(
          builder: (context) => const HelpCenterScreen(),
        );
      case aboutScreen:
        return CupertinoPageRoute(
          builder: (context) => const AboutScreen(),
        );
      case termAndConditionScreen:
        final showAgreeToTerms = routeSettings.arguments as bool?;
        return CupertinoPageRoute(
          builder: (context) => TermsAndConditionScreen(
              showAgreeToTerms: showAgreeToTerms ?? false),
        );
      case privacyPolicyScreen:
        return CupertinoPageRoute(
          builder: (context) => const PrivacyPolicyScreen(),
        );
      case chatsScreen:
        return CupertinoPageRoute(
          builder: (context) => const ChatScreen(),
        );
      case chatDetailsScreen:
        return CupertinoPageRoute(
          builder: (context) => const ChatDetailsScreen(),
        );
      case addWithdrawalScreen:
        return CupertinoPageRoute(
          builder: (context) => const AddWithdrawalAccount(),
        );
      case forgotPasswordScreen:
        return CupertinoPageRoute(
          builder: (context) => const ForgotPasswordScreen(),
        );
      case enterNewPasswordScreen:
        return CupertinoPageRoute(
          builder: (context) => const EnterNewPasswordScreen(),
        );
      case checkYourEmailScreen:
        return CupertinoPageRoute(
          builder: (context) => const CheckYourEmailScreen(),
        );
      case orderNotificationsScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderNotificationsScreen(),
        );
      case ordersScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrdersScreen(),
        );
      case noRecentOrderScreen:
        return CupertinoPageRoute(
          builder: (context) => const NoRecentOrderScreen(),
        );
      case orderDeliveryDetailScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderDeliveryDetailScreen(),
        );
      case orderSuccessScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderSuccessScreen(),
        );
      case orderCancelledScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderCancelledScreen(),
        );
      case orderDetailsScreen:
        return CupertinoPageRoute(
          builder: (context) => const OrderDetailsScreen(),
        );
      case onboardingScreen:
        return CupertinoPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case loginScreen:
        return CupertinoPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case signupScreen:
        return CupertinoPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case authOtpScreen:
        final String phoneNumber = routeSettings.arguments as String;
        return CupertinoPageRoute(
          builder: (context) =>
              AuthenticationOtpScreen(phoneNumber: phoneNumber),
        );
      case createPasswordScreen:
        final String phoneNumber = routeSettings.arguments as String;
        return CupertinoPageRoute(
          builder: (context) => CreatePasswordScreen(phoneNumber: phoneNumber),
        );
      case signupFormScreen:
        return CupertinoPageRoute(
          builder: (context) => const SignupFormScreen(),
        );
      case selectAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const SelectAccountTypeScreen(),
        );
      case updateAccountScreen:
        return CupertinoPageRoute(
          builder: (context) => const UpdateAccountScreen(),
        );
      case dashboardScreen:
        return CupertinoPageRoute(
          builder: (context) => const DashboardScreen(),
        );
      case verifyEmailScreen:
        return CupertinoPageRoute(
          builder: (context) => const VerifyEmailScreen(),
        );
      case verifyEmailOtpScreen:
        final email = routeSettings.arguments as String;
        return CupertinoPageRoute(
          builder: (context) => VerifyEmailOtpScreen(email: email),
        );
      case addProfilePhotoScreen:
        return CupertinoPageRoute(
          builder: (context) => const AddProfilePhotoScreen(),
        );
      case addAccountWidthdrawalScreen:
        return CupertinoPageRoute(
          builder: (context) => const AddWidthdrawalAccountScreen(),
        );
      case addVehicleScreen:
        return CupertinoPageRoute(
          builder: (context) => const AddVehicleScreen(),
        );
      default:
        throw UnimplementedError('Route not found');
    }
  }
}
