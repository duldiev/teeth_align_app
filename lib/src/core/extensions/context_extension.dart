import 'package:flutter/material.dart';
import 'package:teeth_align_app/l10n/app_localizations.dart';

extension ContextExtensions on BuildContext {
  AppLocalizations? get loc => AppLocalizations.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get userGestureInProgress => Navigator.of(this).userGestureInProgress;

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get bottomViewInset => MediaQuery.of(this).viewInsets.bottom;
}
