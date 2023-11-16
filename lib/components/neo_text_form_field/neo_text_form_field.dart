import 'package:burgan_ui/core/workflow_form/bloc/workflow_form_bloc.dart';
import 'package:burgan_ui/util/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NeoTextFormField extends StatefulWidget {
  final String dataKey;
  final String labelText;
  final bool obscureText;
  final int? maxLength;
  final String? hintText;
  final String? validatorRegex;
  final String? validationErrorText;
  final String? prefixIconPath;
  final double? padding;
  final String? initialData;

  const NeoTextFormField({
    required this.dataKey,
    required this.labelText,
    this.obscureText = false,
    this.maxLength,
    this.hintText,
    this.validatorRegex,
    this.validationErrorText,
    this.prefixIconPath,
    this.padding,
    this.initialData,
    super.key,
  });

  @override
  State<NeoTextFormField> createState() => _NeoTextFormFieldState();
}

class _NeoTextFormFieldState extends State<NeoTextFormField> {
  @override
  void initState() {
    super.initState();
    context.read<WorkflowFormBloc>().add(
          WorkflowFormEventUpdateTextFormField(key: widget.dataKey, value: widget.initialData ?? ""),
        );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (input) => widget.validatorRegex != null
          ? (RegExp(widget.validatorRegex!).hasMatch(input ?? "") ? null : widget.validationErrorText)
          : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: widget.prefixIconPath != null
            ? SvgPicture.asset(widget.prefixIconPath!, width: 8, height: 8, fit: BoxFit.scaleDown)
            : null,
        hintText: widget.hintText,
      ),
      initialValue: widget.initialData,
      maxLength: widget.maxLength,
      obscureText: widget.obscureText,
      onChanged: (text) {
        context.read<WorkflowFormBloc>().add(WorkflowFormEventUpdateTextFormField(key: widget.dataKey, value: text));
      },
    ).paddingAll(widget.padding ?? 0);
  }
}
