import 'package:e_commerse/common/widgets/layout/grid_layout.dart';
import 'package:e_commerse/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerse/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1],),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      const TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1],),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      TSectionHeading(title: 'You might like', onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                    ],
                  ),
                ),],
    );
  }
}