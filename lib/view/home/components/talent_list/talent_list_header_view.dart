import 'package:flutter/material.dart';

class TalentListHeaderView extends StatelessWidget {
  const TalentListHeaderView(
      {required this.text,
      required this.onPressedArrow,
      this.hiddenArrow = false,
      Key? key})
      : super(key: key);

  final String text;
  final Function() onPressedArrow;
  final bool hiddenArrow;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff5C7498),
          ),
        ),
        hiddenArrow
            ? const SizedBox.shrink()
            : IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color(0xffA2ACBB),
                  size: 18,
                ),
                onPressed: onPressedArrow,
              ),
      ],
    );
  }
}
