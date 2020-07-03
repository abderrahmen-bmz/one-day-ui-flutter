import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar({
    @required this.photoPath,
    @required this.minRadius,
  });

  final String photoPath;
  final double minRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        minRadius: minRadius,
        backgroundImage: photoPath != null ? ExactAssetImage(photoPath) : null,
        child:
            photoPath == null ? Icon(Icons.camera_alt, size: minRadius) : null);
  }
}
