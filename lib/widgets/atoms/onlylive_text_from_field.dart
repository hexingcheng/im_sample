import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnlyliveTextFormField extends StatefulWidget {
  const OnlyliveTextFormField({
    required this.label,
    this.onChanged,
    this.unFocus,
    this.keyboardType = TextInputType.text,
    this.hintText,
    this.hasValid = true,
    this.passwordMode = false,
    this.maxLength,
    this.noteText,
  });
  final String label;
  final bool hasValid;
  final void Function(String)? onChanged;
  final void Function()? unFocus;
  final TextInputType keyboardType;
  final String? hintText;
  final bool passwordMode;
  final int? maxLength;
  final String? noteText;

  @override
  _OnlyliveTextFormFieldState createState() => _OnlyliveTextFormFieldState();
}

class _OnlyliveTextFormFieldState extends State<OnlyliveTextFormField> {
  bool _showPassword = false;
  final _controller = TextEditingController();
  int _textLength = 0;
  final _focusNode = FocusNode();

  bool chageObscureText() {
    if (_showPassword) {
      return false;
    }
    return true;
  }

  @override
  void initState() {
    _controller.addListener(onChageText);
    if (widget.unFocus != null) {
      _focusNode.addListener(() {
        if (!_focusNode.hasFocus) {
          widget.unFocus!();
        }
      });
    }
    super.initState();
  }

  void onChageText() {
    super.setState(() {
      _textLength = _controller.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: OnlyliveColor.darkPurple,
              ),
            ),
            widget.maxLength != null
                ? Text(
                    "$_textLength/${widget.maxLength}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: OnlyliveColor.darkPurple,
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
        TextFormField(
          controller: _controller,
          onChanged: widget.onChanged,
          focusNode: _focusNode,
          keyboardType: widget.keyboardType,
          cursorColor: OnlyliveColor.purple,
          cursorHeight: 24,
          cursorWidth: 3,
          obscureText: !widget.passwordMode ? false : chageObscureText(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: OnlyliveColor.darkPurple,
          ),
          maxLength: widget.maxLength,
          buildCounter: (context,
                  {required currentLength,
                  required isFocused,
                  required maxLength}) =>
              null,
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
        ),
        widget.noteText != null
            ? Column(
                children: [
                  const SizedBox(height: 8),
                  Text(
                    widget.noteText!,
                    style: TextStyle(
                      color: widget.hasValid ? OnlyliveColor.grey : Colors.red,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
