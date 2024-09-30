class NotificationItem {
  final String image;
  final String title;
  final String body;
  final DateTime timestamp;

  NotificationItem({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory NotificationItem.fromJson(Map<String, dynamic> json) {
    return NotificationItem(
      image: json['image'],
      title: json['title'],
      body: json['body'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  static List<NotificationItem> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => NotificationItem.fromJson(json)).toList();
  }
}