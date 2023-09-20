import 'package:flutter/material.dart';
import 'package:hogme_flutter_application/utils/widgets/text_widgets.dart';

class AnnouncementData extends StatelessWidget {
  const AnnouncementData({
    super.key,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  final String title;
  final String content;
  final String createdAt;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: text24Bold(text: title),
      subtitle: text16Normal(text: content),
    );
  }
}
