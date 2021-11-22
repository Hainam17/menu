import 'package:flutter/material.dart';
import 'circle_image.dart';

class User extends StatelessWidget {
  const User({Key? key, required this.userName, this.imageProvider}) : super(key: key);

  final String userName;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [],
      ),
    );
  }
}
