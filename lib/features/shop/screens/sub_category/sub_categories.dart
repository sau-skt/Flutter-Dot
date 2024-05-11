import 'package:e_commerse/common/widgets/appbar/appbar.dart';
import 'package:e_commerse/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerse/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerse/common/widgets/texts/section_heading.dart';
import 'package:e_commerse/utils/constants/image_strings.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundImage(imageUrl: TImages.banner4, width: double.infinity,applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              Column(
                children: [
                  TSectionHeading(title: 'Sports shirts', onPressed: () {},),
                  const SizedBox(height: TSizes.spaceBtwItems / 2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                      itemBuilder: (context, index) => const TProductCardHorizontal()
                      ),
                  )
                ],
              ),
            ],
          ),
          ),
      ),
    );
  }
}