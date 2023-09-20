// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// import '../../utils/colors/app_theme.dart';
// import '../../utils/widgets/text_widgets.dart';

// class TestImageUpload extends StatefulWidget {
//   const TestImageUpload({super.key});

//   @override
//   State<TestImageUpload> createState() => _TestImageUploadState();
// }

// class _TestImageUploadState extends State<TestImageUpload> {
//   late TextEditingController bodycontroller;

//   File? validIdImage;

//   List<XFile>? facilityImagesPath = [];

//   Future<void> _getImage(ImageSource source, Function(File) setImage) async {
//     final image = await ImagePicker().pickImage(source: source);
//     if (image == null) return;
//     setImage(File(image.path));
//   }

//   @override
//   void initState() {
//     super.initState();
//     bodycontroller = TextEditingController();
//   }

//   @override
//   void dispose() {
//     bodycontroller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppTheme.primaryBackground,
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               //logo with text

//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15.00, right: 15.00),
//                     child: Image.asset(
//                       "assets/icons/icon_hogme.png",
//                       height: 100,
//                       width: 100,
//                     ),
//                   ),
//                   text50BoldHeading(text: 'Sign up'),
//                 ],
//               ),

//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
//                 child: TextFormField(
//                   controller: bodycontroller,
//                   style: const TextStyle(color: Colors.black),
//                   decoration: InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     prefixIcon: const Icon(
//                       Icons.people,
//                       color: Colors.black,
//                     ),
//                     labelText: "Body",
//                     labelStyle: const TextStyle(color: Colors.black),
//                     border: InputBorder.none,
//                     filled: true,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   _getImage(ImageSource.gallery, (file) {
//                     setState(() {
//                       validIdImage = file;
//                     });
//                   });
//                 },
//                 child: const Text('Select Valid ID Image'),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   _getImage(ImageSource.gallery, (file) {
//                     setState(() {
//                       facilityImage = file;
//                     });
//                   });
//                 },
//                 child: const Text('Select Facility Image'),
//               ),
//               //forgot password = if makaya

//               const Row(),
//               //Create account button
//               // GestureDetector(
//               //   onTap: () => {},
//               //   child: Container(
//               //     width: 325,
//               //     height: 50,
//               //     margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
//               //     decoration: buttonShadow(themeColor: Colors.white),
//               //     child: Center(
//               //       child:
//               //           text16Bold(text: "Sign up", defaultColor: Colors.black),
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
