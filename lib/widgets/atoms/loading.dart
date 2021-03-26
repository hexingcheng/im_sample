import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class Loading extends StatelessWidget {
  const Loading({this.loading = true, this.isTransparent = false});
  final bool loading;
  final bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: isTransparent ? Colors.black.withOpacity(0.4) : Colors.white,
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
