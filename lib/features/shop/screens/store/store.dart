import 'package:e_commerse/common/widgets/appbar/appbar.dart';
import 'package:e_commerse/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerse/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerse/common/widgets/layout/grid_layout.dart';
import 'package:e_commerse/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerse/common/widgets/texts/section_heading.dart';
import 'package:e_commerse/utils/constants/colors.dart';
import 'package:e_commerse/utils/constants/enums.dart';
import 'package:e_commerse/utils/constants/image_strings.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:e_commerse/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_brand_title_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    const TSearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems / 1.5,
                    ),
                    TGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index) {
                      return GestureDetector(
                      onTap: () {},
                      child: TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Flexible(
                              child: TCircularImage(
                                isNetworkImage: false,
                                image: TImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                overlayColor: THelperFunctions.isDarkMode(context)
                                    ? TColors.white
                                    : TColors.black,
                              ),
                            ),
                            const SizedBox(
                              width: TSizes.spaceBtwItems / 2,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TBrandTitleWithVerification(
                                    title: 'Nike',
                                    brandTextSize: TextSizes.large,
                                  ),
                                  Text(
                                    '256 Products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                    )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ); 
                    }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
