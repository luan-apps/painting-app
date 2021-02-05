import 'package:flutter/material.dart';
import 'package:painting_app/util/decorations.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode node;
  final String labelText;
  final VoidCallback onEditingComplete;
  final Function(String) onChanged;

  const InputField({
    @required this.controller,
    @required this.node,
    @required this.labelText,
    @required this.onEditingComplete,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: node,
      onEditingComplete: onEditingComplete,
      onChanged: onChanged,
      decoration: Decorations.inputFieldDecoration.copyWith(
        labelText: labelText,
      ),
    );
  }
}
