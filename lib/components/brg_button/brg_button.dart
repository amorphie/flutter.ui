import 'package:flutter/material.dart';
import 'package:neo_ui/util/extensions/widget_extensions.dart';

const _buttonColor = Color(0xFF0069AA); // TODO: Move to colors file

@Deprecated("Refactor as NeoButton")
class BrgButton extends StatelessWidget {
  const BrgButton({
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: color ?? _buttonColor,
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: textColor)).padding(left: 16, right: 16, top: 20, bottom: 20),
    );
  }
}
