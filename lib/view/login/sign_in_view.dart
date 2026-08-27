import 'package:fin_track/common/color_extension.dart';
import 'package:fin_track/common_widget/primary_button.dart';
import 'package:fin_track/common_widget/round_textfield.dart';
import 'package:fin_track/common_widget/secondary_button.dart';
import 'package:fin_track/view/login/sign_up_view.dart';
// 1. IMPORT YOUR MAIN TAB VIEW FILE HERE
// (Please correct this path if your main_tab_view.dart file is in a different folder)
import 'package:fin_track/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  "assets/img/app_logo.png",
                  width: media.width * 0.5,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: media.height * 0.08),

                RoundTextField(
                  title: "Login",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                RoundTextField(
                  title: "Password",
                  controller: txtPassword,
                  obscureText: true,
                ),

                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isRemember = !isRemember;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            isRemember
                                ? Icons.check_box_rounded
                                : Icons.check_box_outline_blank_rounded,
                            size: 25,
                            color: TColor.gray50,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              color: TColor.gray50,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password",
                        style: TextStyle(color: TColor.gray50, fontSize: 14),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                PrimaryButton(
                  title: "Sign In",
                  onPressed: () {
                    // 🟢 Yeh line purani saari screens ko clear karke MainTabView par le jayegi
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainTabView(),
                      ),
                      (route) =>
                          false, // Isse saare pichle routes remove ho jate hain
                    );
                  },
                ),

                SizedBox(height: media.height * 0.08),

                Text(
                  "if you don't have an account yet?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(height: 20),
                SecondaryButton(
                  title: "Sign up",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
