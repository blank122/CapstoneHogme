import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController extends GetxController {
  final ImagePicker _images = ImagePicker();
  // final ImagePicker _validId = ImagePicker();

  List<XFile>? images = [];
  List<String>? imagesPath = [];

  var selectedFileCount = 0.obs;

  void multipleImage() async {
    images = await _images.pickMultiImage();
    if (images != null) {
      //logic for checking the image uploaded by the user
      for (XFile file in images!) {
        imagesPath?.add(file.path);
      }
    } else {
      Get.snackbar(
          'Try Again', 'Please enter facility images for further verification',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // void multipleValidIdImage() async {
  //   validIdImages = await _validId.pickMultiImage();
  //   if (validIdImages != null) {
  //     //logic for checking the image uploaded by the user
  //     for (XFile file in validIdImages!) {
  //       validIdImagePath?.add(file.path);
  //     }
  //   } else {
  //     Get.snackbar(
  //         'Try again', 'Please upload valid id images for further verification',
  //         snackPosition: SnackPosition.BOTTOM);
  //   }
  // }
}
