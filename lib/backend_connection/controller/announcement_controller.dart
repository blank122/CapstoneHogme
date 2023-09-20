import 'dart:convert';

import 'package:get/get.dart';
import 'package:hogme_flutter_application/backend_connection/API/constant.dart';
import 'package:hogme_flutter_application/backend_connection/models/announcement_model.dart';
import 'package:http/http.dart' as http;

class AnnouncementController extends GetxController {
  //variable for annoucement
  // Rx<List<AnnouncementModel>> announcement = Rx<List<AnnouncementModel>>([]);
  var announcement = <AnnouncementModel>[].obs;
  final isLoading = false.obs;
  // var announcementList = <AnnouncementModel>[].obs;

  @override
  void onInit() {
    getAnnouncement();
    super.onInit();
  }

  // Future<void> fetchAnnouncement() async {
  //   try {
  //     isLoading.value = true;
  //     //logic to get all the announcement post
  //     var response =
  //         await http.get(Uri.parse('$baseUrl/announcement'), headers: {
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer ${box.read('token')}',
  //     });
  //     if (response.statusCode == 200) {
  //       AnnouncementModel announcementModel =
  //           AnnouncementModel.fromJson(jsonDecode(response.body));
  //       announcementList.add(
  //         AnnouncementModel(
  //           id: announcementModel.id,
  //           title: announcementModel.title,
  //           createdAt: announcementModel.createdAt,
  //         ),
  //       );
  //       // ignore: avoid_print
  //       print(json.decode(response.body));
  //       isLoading.value = true;
  //     } else {
  //       isLoading.value = false;

  //       // ignore: avoid_print
  //       print(json.decode(response.body));
  //       Get.snackbar('Error of Loading of Data',
  //           'Server responded: ${response.statusCode}:${response.reasonPhrase}',
  //           snackPosition: SnackPosition.TOP);
  //     }
  //   } catch (e) {
  //     // ignore: avoid_print
  //     print(e.toString());
  //   }
  // }

  //get all the announcements
  Future<void> getAnnouncement() async {
    try {
      isLoading.value = true;
      //logic to get all the announcement post
      var response = await http.get(Uri.parse(announcements), headers: {
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        isLoading.value = false;

        // ignore: avoid_print
        final content = jsonDecode(response.body)['announcement'];
        print(content);

        announcement.value = 
        // ignore: avoid_print
      } else {
        isLoading.value = false;

        // ignore: avoid_print
        print(json.decode(response.body));
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
