

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/view/screens/widgets/badge_top_store.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NearbyStoresTile extends StatelessWidget {
  const NearbyStoresTile({
    super.key,
    required this.storeName,
    required this.storeCat,
    required this.storeLoc,
    required this.rating,
    required this.time,
    required this.storeOff,
    required this.storeItems,
  });
  final String storeName;
  final String storeCat;
  final String storeLoc;
  final String rating;
  final String time;
  final String storeOff;
  final String storeItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        height: 135,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Image
                ClipRRect(
                    borderRadius: BorderRadius.circular(JSize.borderRadMd),
                    child: Image.asset(JImages.fruitePie)),
                const JGap(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //-- Main Body
                    Text(
                      storeName,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      storeCat,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      storeLoc,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const JGap(),
                    const BadgeTopStore(),
                  ],
                ),
                const Spacer(),

                // -- Rating + Time
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '★ $rating',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Text(
                          time,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: JColor.secondary),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),

            //-- Footer
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    height: 10,
                    width: JHelperFunctions.screenWidth(context) * 0.71,
                    child: const Divider(
                      thickness: 0.5,
                      color: JColor.darkGrey,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(JImages.percentage),
                const JGap(),
                Text(
                  storeOff,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const JGap(
                  extra: true,
                ),
                SvgPicture.asset(JImages.groceryItemsBag),
                const JGap(),
                Text(
                  storeItems,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
