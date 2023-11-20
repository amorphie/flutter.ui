import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neo_ui/util/brg_input_formatters.dart';
import 'package:neo_ui/util/brg_validator.dart';

@Deprecated("Use NeoTextFormField instead")
class BrgTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final FormFieldValidator<String>? validator;
  final InputBorder? border;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final String? hintText;
  final bool obscureText;

  const BrgTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.prefixIcon,
    this.validator,
    this.border,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: prefixIcon,
        hintText: hintText,
      ),
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      obscureText: obscureText,
    );
  }

  factory BrgTextFormField.tckn({
    required BuildContext context,
    required TextEditingController controller,
    String labelText = "T.C. Identification Number",
  }) {
    const tcknLength = 11;
    return BrgTextFormField(
      controller: controller,
      labelText: labelText,
      prefixIcon: const Icon(Icons.person, color: Colors.black),
      validator: BrgValidator().tckn(),
      keyboardType: TextInputType.number,
      inputFormatters: BrgInputFormatters.onlyNumbers(),
      maxLength: tcknLength,
    );
  }

  factory BrgTextFormField.phoneNumber({
    required BuildContext context,
    required TextEditingController controller,
    String iconAssetPath = "assets/images/ic_keyboard_numeric.svg",
    String labelText = "Phone Number",
    String hintText = "5**",
  }) {
    const phoneNumberLength = 10;
    return BrgTextFormField(
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      prefixIcon: SvgPicture.asset(iconAssetPath, width: 8, height: 8, fit: BoxFit.scaleDown),
      validator: BrgValidator().phoneNumber(),
      keyboardType: TextInputType.number,
      inputFormatters: BrgInputFormatters.onlyNumbers(),
      maxLength: phoneNumberLength,
    );
  }

  factory BrgTextFormField.password({
    required BuildContext context,
    required TextEditingController controller,
    required String labelText,
    required FormFieldValidator<String> validator,
    int? maxLength,
    bool onlyDigits = false,
    bool obscureText = true,
    Widget? prefixIcon,
  }) {
    return BrgTextFormField(
      controller: controller,
      labelText: labelText,
      validator: validator,
      keyboardType: onlyDigits ? TextInputType.number : null,
      inputFormatters: onlyDigits ? BrgInputFormatters.onlyNumbers() : null,
      maxLength: maxLength,
      obscureText: obscureText,
      prefixIcon: prefixIcon,
    );
  }
}
