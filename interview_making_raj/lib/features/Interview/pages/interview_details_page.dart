import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../widgets/custom_card.dart';
import '../widgets/profile_widget.dart';
import '../widgets/table_cell.dart';

class InterviewDetailsPage extends StatefulWidget {
  const InterviewDetailsPage({super.key});

  @override
  State<InterviewDetailsPage> createState() => _InterviewDetailsPageState();
}

class _InterviewDetailsPageState extends State<InterviewDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 2,
        backgroundColor: AppColors.kBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/image1.png'),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Online Marketing training for product selling and management",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Tablecell(
                    title: 'Trainer/Host',
                    content: 'John Doe',
                  ),
                  Tablecell(
                    title: 'Type',
                    content: 'Face to face course',
                  ),
                  Tablecell(
                    title: 'Language',
                    content: 'English',
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Time",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Tablecell(
                    title: 'Start time',
                    content: '8:00 AM',
                  ),
                  Tablecell(
                    title: 'End time',
                    content: '10:00 PM',
                  ),
                  Tablecell(
                    title: '',
                    content: '',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Tablecell(
                    title: 'On Date',
                    content: '23/03/2021',
                  ),
                  Tablecell(
                    title: 'On Time',
                    content: '08:00 AM',
                  ),
                  Tablecell(
                    title: 'Duration',
                    content: '03 Hours',
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Course Description",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.kDarkGreyColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Category",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Chip(
                    label: Text('Online'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                    label: Text('Marketing'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                    label: Text('Training'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "About Trainer",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              const ProfileWidget(),
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset('assets/images/image2.png'),
                  Image.asset(
                    'assets/images/play.png',
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.kDarkGreyColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Relevant Course/Relevant Session",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 380,
                child: ListView(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CustomCard(),
                    CustomCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: 50,
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Add to cart",
                    )),
              )),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Pay (18 KWD)")),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
