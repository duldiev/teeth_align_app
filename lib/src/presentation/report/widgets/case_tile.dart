import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/case_entity.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class CaseTile extends StatelessWidget {
  const CaseTile({
    super.key,
    required this.caseObject,
  });

  final CaseEntity caseObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            caseObject.comment,
          ),
          Gap(1.h),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    caseObject.photoGallery[index].title,
                    style: context.textTheme.titleSmall,
                  ),
                  const Gap(2),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      caseObject.photoGallery[index].photoUrl,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => Gap(2.w),
              itemCount: caseObject.photoGallery.length,
            ),
          ),
        ],
      ),
    );
  }
}
