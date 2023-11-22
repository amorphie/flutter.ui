import 'package:flutter/material.dart';

@Deprecated("Update as NeoDropdownFormField")
class BrgDropdownFormField extends StatelessWidget {
  final List<String> itemList;
  final TextEditingController controller;
  final String? labelText;

  @Deprecated("Update as NeoDropdownFormField")
  const BrgDropdownFormField({
    required this.itemList,
    required this.controller,
    this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: itemList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
      onChanged: (String? value) {
        controller.text = value ?? "";
      },
      icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 24),
      isExpanded: true,
      borderRadius: BorderRadius.circular(16),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
