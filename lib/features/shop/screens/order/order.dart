import 'package:e_commerse/common/widgets/appbar/appbar.dart';
import 'package:e_commerse/features/shop/screens/order/widgets/orders_list.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true,),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TOrderListItems(),
      ),
    );
  }
}