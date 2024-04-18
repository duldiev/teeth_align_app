import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';

class AlignerSettingsTile extends StatelessWidget {
  const AlignerSettingsTile({
    super.key,
    required this.title,
    required this.selectedItem,
    required this.iconData,
    required this.onTap,
  });

  final String title;
  final String selectedItem;
  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 9,
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 26,
                ),
                Gap(4.w),
                Expanded(
                  child: Text(
                    title,
                    style: context.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Gap(3.w),
          Flexible(
            flex: 4,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(6),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedItem,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(1.w),
                    const Icon(Icons.arrow_drop_down, size: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
