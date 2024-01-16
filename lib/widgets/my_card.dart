import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 416 / 215,
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground),
              fit: BoxFit.fill,
            ),
            color: const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                title: Text(
                  "Name card",
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Syah Bandi",
                  style: AppStyles.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(
                  Assets.imagesImage,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 27,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
