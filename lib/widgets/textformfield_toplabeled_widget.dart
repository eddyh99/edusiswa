import 'package:flutter/material.dart';

class TextFormFieldTopLabeled extends StatelessWidget {
  const TextFormFieldTopLabeled({
    super.key,
    this.labelText,
    this.labelPadding = EdgeInsets.zero,
    this.labelAlignment = CrossAxisAlignment.start,
    required this.textFormField,
  });

  final String? labelText;
  final EdgeInsets labelPadding;
  final CrossAxisAlignment labelAlignment;
  final TextFormField textFormField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: labelAlignment,
      children: [
        labelText != null || labelText != ""
            ? Padding(
                padding: labelPadding,
                child: Text(labelText!),
              )
            : SizedBox.shrink(
                child: Padding(
                  padding: labelPadding,
                ),
              ),
        textFormField,
      ],
    );
  }
}
