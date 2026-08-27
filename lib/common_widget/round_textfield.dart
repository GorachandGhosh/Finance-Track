import 'package:fin_track/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign titleAlign;
  final bool obscureText;

  const RoundTextField({
    super.key,
    required this.title,
    this.titleAlign = TextAlign.left,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: titleAlign,
                style: TextStyle(color: TColor.gray50, fontSize: 12),
              ),
            ),
          ],
        ),

        const SizedBox(height: 4),

        Container(
          height: 48,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: TColor.gray60.withOpacity(0.05),
            border: Border.all(color: TColor.gray70),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ), // Added padding for better looking text layout
            child: TextField(
              controller: controller,

              // 🟢 This line makes the user-typed input text white
              style: TextStyle(color: TColor.white, fontSize: 14),

              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
              keyboardType: keyboardType,
              obscureText: obscureText,
            ),
          ),
        ),
      ],
    );
  }
}
