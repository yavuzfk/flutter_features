import 'package:flutter_features/atoms/gradieng_button.dart';
import 'package:flutter_features/page_design/login_purple/widgets/custom_text_field.dart';
import 'package:flutter_features/page_design/login_purple/widgets/confirm_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesignLoginPurple extends StatefulWidget {
  const DesignLoginPurple({Key? key}) : super(key: key);

  @override
  _DesignLoginPurpleState createState() => _DesignLoginPurpleState();
}

class _DesignLoginPurpleState extends State<DesignLoginPurple> {
  final Widget svgPurple = SvgPicture.asset('assets/yuvarlak_mor.svg');
  final Widget svgOpak = SvgPicture.asset('assets/yuvarlak_opak.svg');
  double getDiameter(BuildContext context) => MediaQuery.of(context).size.width;

  late final TextEditingController _userNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordConfirmController;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        body: Stack(
          children: [
            Positioned(
                top: getDiameter(context) / -1,
                right: getDiameter(context) / -2,
                left: getDiameter(context) / -3,
                child: SizedBox(child: svgPurple)),
            Positioned(
                top: -getDiameter(context) / 3,
                right: -getDiameter(context) / 1,
                left: -getDiameter(context) / -9,
                child: SizedBox(child: svgOpak)),
            Positioned(
                top: -getDiameter(context) / -10,
                right: -getDiameter(context) / -12,
                left: -getDiameter(context) / 2,
                child: SizedBox(child: svgOpak)),
            Positioned(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: LoginPageSizes().innerColumnBorderRadius,
                    color: Colors.white,
                  ),
                  width: getDiameter(context) * 0.8,
                  height: getDiameter(context) * 1.1,
                  child: Padding(
                    padding: LoginPageSizes().innerColumnPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: LoginPageSizes().textBottomPadding,
                          child: Text(
                            LoginPageTextItems().usernameText,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        CustomTextField(controller: _userNameController),
                        Padding(
                          padding: LoginPageSizes().textBottomPadding,
                          child: Text(
                            LoginPageTextItems().emailText,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        CustomTextField(controller: _emailController),
                        Padding(
                          padding: LoginPageSizes().textBottomPadding,
                          child: Text(
                            LoginPageTextItems().passworText,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        PasswordConfirmTextField(
                            controller: _passwordController),
                        Padding(
                          padding: LoginPageSizes().textBottomPadding,
                          child: Text(
                            LoginPageTextItems().confirmText,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        PasswordConfirmTextField(
                            controller: _passwordConfirmController),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -getDiameter(context) / -5,
              // right: -getDiameter(context) / -12,
              left: getDiameter(context) / 9,
              child: GradientButton(
                  onPressed: () {},
                  title: LoginPageTextItems().signupButtonText),
            ),
            Positioned(
              top: -getDiameter(context) / -5,
              // right: -getDiameter(context) / -12,
              left: getDiameter(context) / 11,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'SIGNUP',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: -getDiameter(context) / -4.8,
              // right: -getDiameter(context) / -12,
              right: getDiameter(context) / 11,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color.fromARGB(255, 166, 154, 154)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPageSizes {
  EdgeInsetsGeometry textFieldBottomPadding =
      const EdgeInsets.only(bottom: 12.0);
  EdgeInsetsGeometry textBottomPadding = const EdgeInsets.only(bottom: 6.0);
  EdgeInsetsGeometry innerColumnPadding = const EdgeInsets.all(24.0);
  BorderRadius textFieldBorderRadius = BorderRadius.circular(36.0);
  BorderRadius innerColumnBorderRadius = BorderRadius.circular(20.0);
}

class LoginPageTextItems {
  final String signupButtonText = "Signup";
  final String confirmText = "Confirm Password";
  final String passworText = "Password";
  final String emailText = "Email";
  final String usernameText = "Username";
}
