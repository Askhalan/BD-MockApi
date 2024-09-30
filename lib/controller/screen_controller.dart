import 'package:bd_mock_api/model/notification_item_model.dart';
import 'package:bd_mock_api/services/notification_services.dart';
import 'package:bd_mock_api/controller/isolates.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxBool isSectionIconsExtended = false.obs;
  var notifications = <NotificationItem>[].obs;
  RxBool isLoading = true.obs;

  final ApiService apiService = ApiService();

  @override
  void onInit() {
    super.onInit();
    fetchNotifications();
  }

  void fetchNotifications() async {
    try {
      isLoading(true);
      final response = await apiService.fetchData();
      final parsedData = await parseNotifications(response);
      notifications.value = parsedData;
    } catch (e) {
      print("Error fetching data: $e");
    } finally {
      isLoading(false);
    }
  }
}
