// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/model/notification_item_model.dart';
import 'package:bd_mock_api/controller/screen_controller.dart';
import 'package:bd_mock_api/view/widgets/gap.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationsScreen extends StatelessWidget {
  static HomeController controller = Get.find();

  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_circle_left,
              color: JColor.primary,
            )),
        title: const Text('Notifications'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.notifications.isEmpty) {
          return const Center(child: Text('No notifications found.'));
        }

        return ListView.separated(
          itemCount: controller.notifications.length,
          itemBuilder: (context, index) {
            final notification = controller.notifications[index];
            log('${notification.image} ');
            log('${notification.body} ');
            return NotificationTile(notification: notification);
          },
          separatorBuilder: (context, index) => const Divider(),
        );
      }),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.notification,
  });

  final NotificationItem notification;

  @override
  Widget build(BuildContext context) {
    final timeAgo = timeago.format(notification.timestamp);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: JSize.defaultPaddingValue,
        vertical: JSize.defaultPaddingValue * 0.3,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/${notification.image}'),
          JGap(),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                JGap(h: 5),
                Text(
                  notification.body,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                JGap(h: 5),
                // Display the relative time
                Text(
                  timeAgo, // "2 days ago", "20 minutes ago", etc.
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
