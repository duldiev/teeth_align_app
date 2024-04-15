import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/create_case_bloc/create_case_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class CaseInput extends StatelessWidget {
  const CaseInput({
    super.key,
    required this.field,
    required this.imageName,
  });

  final CaseField field;
  final String? imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: imageName == null
                  ? () => context.read<CreateCaseBloc>().add(UploadImage(field))
                  : null,
              child: TextInput(
                label: field.name,
                hintText: imageName ?? 'Tap to upload the case',
                prefixIcon: const Icon(
                  Icons.upload_file_rounded,
                  color: AppColors.primary,
                ),
                brightness: Brightness.light,
                fillColor: AppColors.dark.withOpacity(0.5),
                enabled: false,
              ),
            ),
          ),
          if (imageName != null) ...[
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
    );
  }
}
