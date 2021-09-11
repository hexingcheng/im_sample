import 'package:flutter/material.dart';
import 'package:onlylive/widgets/organisms/blur_transition.dart';

class DisconnectAnimationView extends StatefulWidget {
  const DisconnectAnimationView(
      {required this.showMe, required this.child, Key? key})
      : super(key: key);
  final Widget child;
  final bool showMe;

  @override
  State<DisconnectAnimationView> createState() =>
      DisconnectAnimationViewState();
}

class DisconnectAnimationViewState extends State<DisconnectAnimationView>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double opacity = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 0,
      duration: const Duration(milliseconds: 500),
      vsync: this,
      upperBound: 20,
    );
  }

  void setAnimation() {
    if (widget.showMe) {
      _controller.forward();
      opacity = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    setAnimation();
    return BlurTransition(
      animation: _controller,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 500),
        child: ColoredBox(
          color: Colors.transparent,
          child: widget.child,
        ),
      ),
    );
  }
}
