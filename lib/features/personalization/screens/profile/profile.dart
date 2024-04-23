import 'package:e_commerse/common/widgets/appbar/appbar.dart';
import 'package:e_commerse/common/widgets/images/t_circular_image.dart';
import 'package:e_commerse/common/widgets/texts/section_heading.dart';
import 'package:e_commerse/utils/constants/image_strings.dart';
import 'package:e_commerse/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TCircularImage(image: TImages.userProfileImage1, width: 80, height: 80,),
                      TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                    ],
                  ),
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2,),
                const Divider(),

                const SizedBox(height: TSizes.spaceBtwItems,),
                const TSectionHeading(title: 'Profile Information', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                TProfileMenu(title: 'Name', value: 'Coding with T',onPressed: () {},),
                TProfileMenu(title: 'Username', value: 'coding_with_t',onPressed: () {},),

                const SizedBox(height: TSizes.spaceBtwItems,),
                const TSectionHeading(title: 'Personal Information', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                TProfileMenu(title: 'User ID', value: '45689',icon: Iconsax.copy,onPressed: () {},),
                TProfileMenu(title: 'E-mail', value: 'coding-with-t',onPressed: () {},),
                TProfileMenu(title: 'Phone Number', value: '91-701-1386667',onPressed: () {},),
                TProfileMenu(title: 'Gender', value: 'Male',onPressed: () {},),
                TProfileMenu(title: 'Date Of Birth', value: '10 Oct, 1994',onPressed: () {},),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const  Text('Close Account', style: TextStyle(color: Colors.red),),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}