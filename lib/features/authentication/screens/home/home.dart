import 'package:e_commerse/utils/constants/colors.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  TSearchContainer(text: 'Search in store',),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  Padding(padding: EdgeInsets.only(left: TSizes.defaultSpace), child: Column(
                    children: [
                      TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: TColors.white,),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      THomeCategories()
                    ],
                  ),)
                ],
              ),
                ),
          ],
        ),
      ),
    );
  }
}

