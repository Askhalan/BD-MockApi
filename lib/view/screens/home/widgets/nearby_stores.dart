import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/view/screens/home/widgets/nearby_stores_tile.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:bd_mock_api/view/screens/widgets/section_title.dart';
import 'package:flutter/material.dart';

class NearbyStores extends StatelessWidget {
  const NearbyStores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: JSize.defaultPadSymetric,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SectionTitle(
                text: JTexts.nearbyStores,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    JTexts.seeAll,
                    style: TextStyle(color: JColor.primary),
                  ))
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return const NearbyStoresTile(
                storeName: JTexts.storeName,
                storeCat: JTexts.storeCat,
                storeLoc: JTexts.storeLoc,
                rating: JTexts.pRating,
                time: JTexts.pTime,
                storeOff: JTexts.storeOffer,
                storeItems: JTexts.storeItems,
              );
            },
          ),
          const JGap(),
          SizedBox(
              width: JHelperFunctions.screenWidth(context) * 0.6,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(JTexts.viewStores))),
          const JGap(),
        ],
      ),
    );
  }
}
