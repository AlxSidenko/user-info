import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_info/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomTextField(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.textFieldBackground,
          borderRadius: BorderRadius.circular(6.0),
          border: const Border.fromBorderSide(
              BorderSide(color: AppColors.textFieldBorder, width: 1))),
      child: TextField(
          controller: controller,
          style: const TextStyle(
              fontSize: 14,
              color: AppColors.defaultText,
              fontWeight: FontWeight.w600),
          textInputAction: TextInputAction.done,
          textAlign: TextAlign.start,
          keyboardAppearance: Brightness.light,
          textAlignVertical: TextAlignVertical.center,
          minLines: 1,
          // inputFormatters: [
          //   FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
          // ],
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, color: AppColors.accent),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: AppColors.hintText,
                  fontWeight: FontWeight.w400),
              hintText: hintText)),
    );
  }
}
