import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/view/widgets/shimmer_effect.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class JNetworImage extends StatelessWidget {
  const JNetworImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.height = 100,
    this.width = double.infinity,
  });
  final bool isNetworkImage;
  final String image;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSize.borderRadLg),
      ),
      child: Column(
        children: [
          if (isNetworkImage)
            ClipRRect(
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
              child: CachedNetworkImage(
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, progress) =>
                      JShimmerEffect(width: width, height: height),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: image),
            )
          else
            const Image(fit: BoxFit.cover, image: AssetImage(JImages.icecream)),
        ],
      ),
    );
  }
}
