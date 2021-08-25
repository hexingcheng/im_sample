import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class Loading extends StatelessWidget {
  const Loading(this.loading);
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    OnlyliveColor.purple,
                  ),
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
