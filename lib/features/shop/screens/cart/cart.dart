import 'package:e_commerse/common/widgets/appbar/appbar.dart';
import 'package:e_commerse/common/widgets/texts/product_price_text.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(
            height: TSizes.defaultSpace,
          ),
          itemCount: 10,
          itemBuilder: (_, index) => const Column(
            children: [
              TCartItem(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      TProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  TProductPriceText(price: '256')
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {}, child: const Text('Checkout \$256.0')),
      ),
    );
  }
}