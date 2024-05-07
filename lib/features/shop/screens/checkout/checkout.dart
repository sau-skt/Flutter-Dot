import 'package:e_commerse/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerse/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:e_commerse/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerse/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerse/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerse/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerse/navigation_menu.dart';
import 'package:e_commerse/utils/constants/colors.dart';
import 'package:e_commerse/utils/constants/image_strings.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TCartItems(showAddRemoveButtons: false,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TCouponCode(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  TRoundedContainer(
                    showBorder: true,
                    padding: const EdgeInsets.all(TSizes.md),
                    backgroundColor: dark ? TColors.black : TColors.white,
                    child: const Column(
                      children: [
                        TBillingAmountSection(),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        Divider(),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        TBillingPaymentSection(),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        TBillingAddressSection()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
          image: TImages.successfulPaymentIcon,
          title: 'Payment Success!',
          subTitle: 'Your item will be shipped soon!',
          onPressed: () => Get.offAll(() => const NavigationMenu()),
        )), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}