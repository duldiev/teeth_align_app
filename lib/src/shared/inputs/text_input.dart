import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    this.label,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlignVertical,
    this.showCursor,
    this.smartDashesType,
    this.smartQuotesType,
    this.maxLengthEnforcement,
    this.minLines,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onTapOutside,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    this.restorationId,
    this.mouseCursor,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.undoController,
    this.onAppPrivateCommand,
    this.cursorOpacityAnimates,
    this.contentInsertionConfiguration,
    this.contextMenuBuilder,
    this.cursorWidth = 2.0,
    this.obscuringCharacter = '•',
    this.decoration,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.obscureText = false,
    this.autofocus = false,
    this.readOnly = false,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.expands = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableIMEPersonalizedLearning = true,
    this.clipBehavior = Clip.hardEdge,
    this.scribbleEnabled = true,
    this.canRequestFocus = true,
    this.autocorrect = true,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.dragStartBehavior = DragStartBehavior.start,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixType = InputSuffixType.none,
    this.fillColor,
    this.hideBorder = false,
    this.brightness = Brightness.dark,
  });

  final String? label;
  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final services.MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final void Function(String value)? onChanged;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function()? onEditingComplete;
  final void Function(String value)? onFieldSubmitted;
  final void Function(String? value)? onSaved;
  final String? Function(String? value)? validator;
  final List<services.TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final Widget? Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final ScrollController? scrollController;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;
  final MouseCursor? mouseCursor;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final UndoHistoryController? undoController;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final bool? cursorOpacityAnimates;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final DragStartBehavior dragStartBehavior;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final Clip clipBehavior;
  final bool scribbleEnabled;
  final bool canRequestFocus;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputSuffixType suffixType;
  final Color? fillColor;
  final bool hideBorder;
  final Brightness brightness;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool obscureText = false;

  @override
  void didChangeDependencies() {
    if (widget.suffixType == InputSuffixType.obsecure) {
      setState(() => obscureText = true);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.white,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    var defaultDecoration = InputDecoration(
      fillColor: widget.fillColor ?? AppColors.white,
      filled: true,
      hintText: widget.hintText,
      hintStyle: context.textTheme.bodyLarge?.copyWith(
        color: switch (widget.brightness) {
          Brightness.dark => AppColors.dark.withOpacity(0.6),
          Brightness.light => AppColors.white80op,
        },
      ),
      prefixIcon: widget.prefixIcon,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      errorStyle: context.textTheme.labelSmall?.copyWith(
        color: AppColors.danger,
        height: 1,
      ),
      border: InputBorder.none,
      suffixIcon: switch (widget.suffixType) {
        InputSuffixType.none => widget.suffixIcon,
        InputSuffixType.obsecure => InkWell(
            onTap: () => setState(() => obscureText = !obscureText),
            child: Icon(
              obscureText == true ? Icons.visibility_off : Icons.visibility,
              size: 18,
              color: Colors.grey,
            ),
          ),
      },
    );

    if (!widget.hideBorder) {
      defaultDecoration = defaultDecoration.copyWith(
        border: inputBorder,
        focusedBorder: inputBorder,
        errorBorder: inputBorder.copyWith(
          borderSide: inputBorder.borderSide.copyWith(
            color: AppColors.danger,
          ),
        ),
        focusedErrorBorder: inputBorder,
      );
    }

    final textInput = TextFormField(
      restorationId: widget.restorationId,
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: widget.decoration ?? defaultDecoration,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      style: widget.style ??
          context.textTheme.bodyLarge?.copyWith(
            color: switch (widget.brightness) {
              Brightness.dark => AppColors.black,
              Brightness.light => AppColors.white80op,
            },
            fontWeight: FontWeight.w600,
          ),
      strutStyle: widget.strutStyle,
      textAlign: widget.textAlign,
      textAlignVertical: widget.textAlignVertical,
      textDirection: widget.textDirection,
      textCapitalization: widget.textCapitalization,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      showCursor: widget.showCursor,
      obscuringCharacter: widget.obscuringCharacter,
      obscureText: obscureText,
      autocorrect: widget.autocorrect,
      smartDashesType: widget.smartDashesType ??
          (obscureText ? SmartDashesType.disabled : SmartDashesType.enabled),
      smartQuotesType: widget.smartQuotesType ??
          (obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled),
      enableSuggestions: widget.enableSuggestions,
      maxLengthEnforcement: widget.maxLengthEnforcement,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      expands: widget.expands,
      maxLength: widget.maxLength,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
        if (widget.onTapOutside != null) {
          widget.onTapOutside!(event);
        }
      },
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onSaved: widget.onSaved,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      enabled: widget.enabled ?? widget.decoration?.enabled ?? true,
      cursorWidth: widget.cursorWidth,
      cursorHeight: widget.cursorHeight,
      cursorRadius: widget.cursorRadius,
      cursorColor: widget.cursorColor,
      scrollPadding: widget.scrollPadding,
      scrollPhysics: widget.scrollPhysics,
      keyboardAppearance: widget.keyboardAppearance,
      enableInteractiveSelection: widget.enableInteractiveSelection ??
          (!obscureText || !widget.readOnly),
      selectionControls: widget.selectionControls,
      buildCounter: widget.buildCounter,
      autofillHints: widget.autofillHints,
      scrollController: widget.scrollController,
      enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
      mouseCursor: widget.mouseCursor,
      contextMenuBuilder: widget.contextMenuBuilder,
      spellCheckConfiguration: widget.spellCheckConfiguration,
      magnifierConfiguration: widget.magnifierConfiguration,
      undoController: widget.undoController,
      onAppPrivateCommand: widget.onAppPrivateCommand,
      cursorOpacityAnimates: widget.cursorOpacityAnimates,
      selectionHeightStyle: widget.selectionHeightStyle,
      selectionWidthStyle: widget.selectionWidthStyle,
      dragStartBehavior: widget.dragStartBehavior,
      contentInsertionConfiguration: widget.contentInsertionConfiguration,
      clipBehavior: widget.clipBehavior,
      scribbleEnabled: widget.scribbleEnabled,
      canRequestFocus: widget.canRequestFocus,
    );

    if (widget.label != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: const Offset(6, 0),
            child: Text(
              widget.label!,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Gap(0.5.h),
          textInput,
        ],
      );
    } else {
      return textInput;
    }
  }
}
