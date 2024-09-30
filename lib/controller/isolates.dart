import 'dart:convert';
import 'package:bd_mock_api/model/notification_item_model.dart';
import 'package:flutter/foundation.dart';  // Import for `compute` function

Future<List<NotificationItem>> parseNotifications(String jsonStr) async {
  return compute(_parseNotificationsInBackground, jsonStr);
}

List<NotificationItem> _parseNotificationsInBackground(String jsonStr) {
  final jsonData = json.decode(jsonStr);
  return NotificationItem.fromJsonList(jsonData['data']);
}