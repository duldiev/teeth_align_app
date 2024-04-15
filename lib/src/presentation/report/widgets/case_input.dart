import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/enum_extension.dart';
import 'package:teeth_align_app/src/core/helpers/validators.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/create_case_bloc/create_case_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class CaseInput extends StatelessWidget {
  const CaseInput({
    super.key,
    required this.field,
    required this.image,
  });

  final CaseField field;
  final XFile? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Transform.translate(
            offset: const Offset(6, 0),
            child: Text(
              field.name,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Gap(4),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: image != null
                ? Image.file(
                    File(image!.path),
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : field.image,
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: image == null
                      ? () =>
                          context.read<CreateCaseBloc>().add(UploadImage(field))
                      : null,
                  child: TextInput(
                    hintText: image?.name ?? 'Tap to upload',
                    prefixIcon: const Icon(
                      Icons.upload_file_rounded,
                      color: AppColors.primary,
                    ),
                    hintStyle: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey,
                    ),
                    validator: (_) => Validators.file(image?.name),
                    brightness: Brightness.light,
                    fillColor: AppColors.dark.withOpacity(0.5),
                    enabled: false,
                  ),
                ),
              ),
              if (image != null) ...[
                Gap(2.w),
                GestureDetector(
                  onTap: () => context.read<CreateCaseBloc>().add(
                        DeleteImage(field),
                      ),
                  child: Container(
                    width: 40,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.danger.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.delete_forever_rounded,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
