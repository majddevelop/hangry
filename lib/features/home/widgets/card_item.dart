import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    required this.rate,
  });
  final String image, text, desc, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -10,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                        'assets/icon/shadow.png',
                        errorBuilder: (context, error, stackTrace) => const SizedBox()
                    ),
                  ),
                  Center(
                    child: Image.network(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
            CustomText(
              text: text,
              weight: FontWeight.bold,
              size: 14,
            ),
            CustomText(
              text: desc,
              size: 12,
              color: Colors.grey,
            ),
            const Gap(4),
            Row(
              children: [
                CustomText(text: '⭐ $rate', size: 12),
                const Spacer(),
                Icon(CupertinoIcons.heart, color: AppColors.primary, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}