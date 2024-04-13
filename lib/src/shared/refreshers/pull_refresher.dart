import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class PullRefresher extends StatefulWidget {
  const PullRefresher({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  final Future<void> Function() onRefresh;
  final Widget child;

  @override
  State<PullRefresher> createState() => _PullRefresherState();
}

class _PullRefresherState extends State<PullRefresher> {
  bool _renderCompleteState = false;

  ScrollDirection prevScrollDirection = ScrollDirection.idle;

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      withRotation: false,
      backgroundColor: AppColors.primary,
      onRefresh: widget.onRefresh,
      durations: const RefreshIndicatorDurations(
        completeDuration: Duration(milliseconds: 500),
      ),
      displacement: 50,
      onStateChanged: (change) {
        if (change.didChange(to: IndicatorState.complete)) {
          _renderCompleteState = true;
        } else if (change.didChange(to: IndicatorState.idle)) {
          _renderCompleteState = false;
        }
      },
      indicatorBuilder: (
        BuildContext context,
        IndicatorController controller,
      ) {
        return _renderCompleteState
            ? const Icon(
                Icons.check,
                color: AppColors.white,
                size: 30,
              )
            : Padding(
                padding: const EdgeInsets.all(3),
                child: Assets.animations.refresher.lottie(),
              );
      },
      child: widget.child,
    );
  }
}
