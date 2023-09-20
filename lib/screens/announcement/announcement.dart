import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hogme_flutter_application/screens/announcement/announcementdata.dart';

import '../../backend_connection/controller/announcement_controller.dart';
import '../../utils/widgets/text_widgets.dart';

class Announcement extends StatelessWidget {
  Announcement({super.key});

  final AnnouncementController _announcementController =
      Get.put(AnnouncementController());

  final isLoading = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: text24Bold(text: 'Announcement'),
                ),
                Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.arrow_outward_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Obx(() {
              return _announcementController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          _announcementController.announcement.value.length,
                      itemBuilder: (context, index) {
                        return AnnouncementData(
                            title: _announcementController
                                .announcement.value[index].title,
                            content: _announcementController
                                .announcement.value[index].content,
                            createdAt: _announcementController
                                .announcement.value[index].createdAt
                                .toIso8601String());
                      },
                    );
            }),
          ],
        ),
      ),
    );
  }
}
