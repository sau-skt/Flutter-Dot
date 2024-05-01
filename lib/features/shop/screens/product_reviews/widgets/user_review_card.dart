import 'package:e_commerse/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerse/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerse/utils/constants/colors.dart';
import 'package:e_commerse/utils/constants/image_strings.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:e_commerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert),),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly.    Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",style: Theme.of(context).textTheme.titleMedium,),
                    Text('02 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly.    Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
      ],
    );
  }
}