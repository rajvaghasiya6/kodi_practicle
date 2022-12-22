import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import 'profile_widget.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: 340,
      child: Card(
        child: Column(
          children: [
            Image.asset('assets/images/image1.png'),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const ProfileWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Online Marketing training for product selling",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23 March 2021',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        '15 KWD',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: AppColors.kPrimaryColor,
                                ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
