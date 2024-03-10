import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class HideBehindKeyoard extends StatefulWidget {
  const HideBehindKeyoard({
    super.key,
    required this.slideOffset,
    required this.child,
  });

  final Offset slideOffset;
  final Widget child;

  @override
  State<HideBehindKeyoard> createState() => _HideBehindKeyoardState();
}

class _HideBehindKeyoardState extends State<HideBehindKeyoard> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (_, isKeyboardVisible) => Visibility(
        visible: isVisible,
        maintainAnimation: true,
        maintainState: true,
        child: AnimatedSlide(
          offset: Offset(
            isKeyboardVisible ? widget.slideOffset.dx : 0,
            isKeyboardVisible ? widget.slideOffset.dy : 0,
          ),
          duration: const Duration(milliseconds: 200),
          onEnd: () => setState(() {
            isVisible = !isKeyboardVisible;
          }),
          child: IgnorePointer(
            ignoring: !isVisible,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
