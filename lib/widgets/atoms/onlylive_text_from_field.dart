import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnlyliveTextFormField extends StatefulWidget {
  const OnlyliveTextFormField({
    required this.label,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.keyboardType = TextInputType.text,
    this.hintText,
    this.passwordMode = false,
  });
  final String label;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextInputType keyboardType;
  final String? hintText;
  final bool passwordMode;

  @override
  _OnlyliveTextFormFieldState createState() => _OnlyliveTextFormFieldState();
}

class _OnlyliveTextFormFieldState extends State<OnlyliveTextFormField> {
  bool _showPassword = false;

  bool chageObscureText() {
    if (_showPassword) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: OnlyliveColor.darkPurple,
          ),
        ),
        TextFormField(
          validator: widget.validator,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          keyboardType: widget.keyboardType,
          cursorColor: OnlyliveColor.purple,
          cursorHeight: 24,
          cursorWidth: 3,
          obscureText: !widget.passwordMode ? false : chageObscureText(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 12, bottom: 13),
            focusColor: OnlyliveColor.purple,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: OnlyliveColor.purple),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: OnlyliveColor.paleGrey),
            ),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: OnlyliveColor.grey,
            ),
            isDense: true,
            suffixIcon: widget.passwordMode
                ? IconButton(
                    icon: FaIcon(
                      _showPassword
                          ? FontAwesomeIcons.solidEyeSlash
                          : FontAwesomeIcons.solidEye,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          _showPassword = !_showPassword;
                        },
                      );
                    },
                  )
                : null,
          ),
        )
      ],
    );
  }
}
