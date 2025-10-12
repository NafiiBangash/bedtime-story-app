import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool obscure;
  final String iconUrl;
  final String hint;
  final bool isSuffix;
  const TextFieldWidget({
    super.key,
    this.obscure = true,
    required this.iconUrl,
    required this.hint,
    this.isSuffix = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1.5),
        color: Colors.transparent,
      ),
      child: TextField(
        obscureText: obscure,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: Image.asset(iconUrl, height: 18, width: 18),

          // 👇 custom suffix
          suffixIcon: isSuffix
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    'assets/icons/Eye On.png',
                    height: 15,
                    width: 15,
                  ),
                )
              : const SizedBox.shrink(),

          // 👇 enforce constraints so suffix stays small
          suffixIconConstraints: const BoxConstraints(
            minHeight: 20,
            minWidth: 20,
          ),
          isCollapsed: true,
          contentPadding: EdgeInsets.zero,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white70),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
