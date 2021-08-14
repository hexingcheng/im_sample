import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class Loading extends StatelessWidget {
  const Loading(
      {this.loading = true, this.backgronudColor = Colors.transparent});
  final bool loading;
  final Color backgronudColor;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: backgronudColor,
            child: Center(
              child: SizedBox.fromSize(
                size: const Size(30, 30),
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    OnlyliveColor.darkPurple,
                  ),
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
