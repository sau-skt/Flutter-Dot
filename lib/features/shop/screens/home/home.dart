
import 'package:e_commerse/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerse/utils/constants/colors.dart';
import 'package:e_commerse/utils/constants/image_strings.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../authentication/screens/home/widgets/home_appbar.dart';
import '../../../authentication/screens/home/widgets/home_categories.dart';
import '../../../authentication/screens/home/widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children : 
                [
                  const TPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3],),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  TSectionHeading(title: 'Popular Products', onPressed: () {},),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  TGridLayout(itemCount: 2,itemBuilder: (_, index) => const TProductCardVertical()),
                ]),
            ),
          ],
        ),
      ),
    );
  }
}

