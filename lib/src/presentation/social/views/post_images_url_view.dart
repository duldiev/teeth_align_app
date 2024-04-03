import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class PostImagesUrlView extends StatefulWidget {
  const PostImagesUrlView({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  State<PostImagesUrlView> createState() => _PostImagesUrlViewState();
}

class _PostImagesUrlViewState extends State<PostImagesUrlView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.imageUrls.isEmpty) {
      return const SizedBox();
    }
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.hardEdge,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) => Image.network(
              widget.imageUrls[index],
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            onPageChanged: (value) => setState(() {
              currentPage = value;
            }),
          ),
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imageUrls.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Icon(
                FontAwesomeIcons.solidCircle,
                size: 8,
                color: currentPage == index
                    ? AppColors.primary
                    : AppColors.grey.withOpacity(0.2),
              ),
            ),
          ),
        ),
        Gap(2.h - 8),
      ],
    );
  }
}
