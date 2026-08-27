import 'package:fin_track/common/color_extension.dart';
import 'package:fin_track/common_widget/primary_button.dart';
import 'package:fin_track/common_widget/round_textfield.dart';
import 'package:fin_track/common_widget/secondary_button.dart';
import 'package:fin_track/view/login/sign_in_view.dart';
import 'package:fin_track/view/login/social_login.dart';
import 'package:fin_track/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  void dispose() {
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: TColor.gray80,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          children: [
            Center(
              child: Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: media.height * 0.08),

            RoundTextField(
              title: "E-mail address",
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 15),

            RoundTextField(
              title: "Password",
              controller: txtPassword,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true, // 🟢 Removed the 'style' error line from here
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(child: _PasswordStrengthBar()),
                Expanded(child: _PasswordStrengthBar()),
                Expanded(child: _PasswordStrengthBar()),
                Expanded(child: _PasswordStrengthBar()),
              ],
            ),

            const SizedBox(height: 8),

            Text(
              "Use 8 or more characters with a mix of letters, numbers & symbols.",
              style: TextStyle(color: TColor.gray50, fontSize: 12),
            ),

            const SizedBox(height: 20),

            PrimaryButton(
              title: "Get started, create an account.",
              onPressed: () {
                // 🟢 Account create hone ke baad direct MainTabView par bhejein bina pichli screen yaad rakhe
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MainTabView()),
                  (route) => false,
                );
              },
            ),

            SizedBox(height: media.height * 0.08),

            Text(
              "Do you have already an account? Sign in to continue.",
              textAlign: TextAlign.center,
              style: TextStyle(color: TColor.white, fontSize: 14),
            ),

            const SizedBox(height: 20),

            SecondaryButton(
              title: "Sign in",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _PasswordStrengthBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: TColor.gray70,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
