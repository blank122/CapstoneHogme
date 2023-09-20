// import 'dart:io';

// import 'package:get/get.dart';

// class ImageUploadProvider extends GetConnect {
//   Future<String> uploadImage(List<String> imagesPath, String body) async {
//     try {
//       final valididForm = FormData({});

//       for (String path in imagesPath) {
//         valididForm.files.add(
//           MapEntry(
//             "file[]",
//             MultipartFile(File(path),
//                 filename:
//                     "${DateTime.now().microsecondsSinceEpoch}.${path.split('.').last}"),
//           ),
//         );
//       }
//       final response
//     } catch (exception) {
//       return Future.error(exception.toString());
//     }
//   }
// }
