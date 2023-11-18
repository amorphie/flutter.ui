import 'package:neo_ui/util/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class SecurityIconWidget extends StatelessWidget {
  final String text;
  final String securityImagePath;

  const SecurityIconWidget({
    super.key,
    this.text = "SECURITY",
    this.securityImagePath = "assets/images/ic_security.png",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Image.asset(securityImagePath),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ).padding(left: 4)
      ],
    );
  }
}
