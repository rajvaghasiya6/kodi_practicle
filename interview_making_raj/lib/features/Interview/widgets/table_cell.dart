import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class Tablecell extends StatelessWidget {
  final String title;
  final String content;
  const Tablecell({required this.title, required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: AppColors.kGreyColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            content,
            maxLines: 2,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
