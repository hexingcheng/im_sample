import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({required this.text, required this.onPressedArrow});
  final String text;
  final Function() onPressedArrow;

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
        IconButton(
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
