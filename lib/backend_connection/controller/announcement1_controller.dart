import 'dart:convert';

import 'package:get/get.dart';
import 'package:hogme_flutter_application/backend_connection/API/constant.dart';
import 'package:hogme_flutter_application/backend_connection/models/announcement_model.dart';
import 'package:http/http.dart' as http;

class Announcement1Controller extends GetxController {
  final isLoading = false.obs;
  AnnouncementModel? _announcementModel;
  @override
  void onInit() {
    super.onInit();
  }

  fetchData() async {
    try {
      //logic for fetching data
      http.Response response = await http.get(Uri.tryParse(announcements)!);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        _announcementModel = AnnouncementModel.fromJson(result);
      }
    } catch (e) {
      print('error on fetching $e');
    } finally {
      isLoading(true);
    }
  }
}
