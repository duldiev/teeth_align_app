/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/refresher.json
  LottieGenImage get refresher =>
      const LottieGenImage('assets/animations/refresher.json');

  /// List of all assets
  List<LottieGenImage> get values => [refresher];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icons/apple.svg');

  /// File path: assets/icons/gold_card_icon.svg
  SvgGenImage get goldCardIcon =>
      const SvgGenImage('assets/icons/gold_card_icon.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/totalNumber.svg
  SvgGenImage get totalNumber =>
      const SvgGenImage('assets/icons/totalNumber.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [apple, goldCardIcon, google, logo, totalNumber];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/center.jpeg
  AssetGenImage get center => const AssetGenImage('assets/images/center.jpeg');

  /// File path: assets/images/doctor.png
  AssetGenImage get doctor => const AssetGenImage('assets/images/doctor.png');

  /// File path: assets/images/doctor_female.png
  AssetGenImage get doctorFemale =>
      const AssetGenImage('assets/images/doctor_female.png');

  /// File path: assets/images/doctor_male.png
  AssetGenImage get doctorMale =>
      const AssetGenImage('assets/images/doctor_male.png');

  /// File path: assets/images/frontOcc.jpg
  AssetGenImage get frontOcc =>
      const AssetGenImage('assets/images/frontOcc.jpg');

  /// File path: assets/images/frontal.jpg
  AssetGenImage get frontal => const AssetGenImage('assets/images/frontal.jpg');

  /// File path: assets/images/frontalDynamic.jpg
  AssetGenImage get frontalDynamic =>
      const AssetGenImage('assets/images/frontalDynamic.jpg');

  /// File path: assets/images/girl.jpeg
  AssetGenImage get girl => const AssetGenImage('assets/images/girl.jpeg');

  /// File path: assets/images/left.jpeg
  AssetGenImage get left => const AssetGenImage('assets/images/left.jpeg');

  /// File path: assets/images/leftOcc.jpg
  AssetGenImage get leftOcc => const AssetGenImage('assets/images/leftOcc.jpg');

  /// File path: assets/images/mandibularOcc.jpg
  AssetGenImage get mandibularOcc =>
      const AssetGenImage('assets/images/mandibularOcc.jpg');

  /// File path: assets/images/maxilaryOcc.jpg
  AssetGenImage get maxilaryOcc =>
      const AssetGenImage('assets/images/maxilaryOcc.jpg');

  /// File path: assets/images/patient.png
  AssetGenImage get patient => const AssetGenImage('assets/images/patient.png');

  /// File path: assets/images/profile.jpg
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.jpg');

  /// File path: assets/images/right.jpeg
  AssetGenImage get right => const AssetGenImage('assets/images/right.jpeg');

  /// File path: assets/images/rightOcc.jpg
  AssetGenImage get rightOcc =>
      const AssetGenImage('assets/images/rightOcc.jpg');

  /// File path: assets/images/thumbsUp.png
  AssetGenImage get thumbsUp =>
      const AssetGenImage('assets/images/thumbsUp.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        center,
        doctor,
        doctorFemale,
        doctorMale,
        frontOcc,
        frontal,
        frontalDynamic,
        girl,
        left,
        leftOcc,
        mandibularOcc,
        maxilaryOcc,
        patient,
        profile,
        right,
        rightOcc,
        thumbsUp
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
