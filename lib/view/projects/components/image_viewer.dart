import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String assetImagePath) {
    if (kIsWeb) {
      // For web, show the image in a dialog (or any other approach)
      _showImageInDialog(context, assetImagePath);
    } else {
      // Default image viewer for mobile and desktop
      _showImageInDialog(context, assetImagePath);
    }
  }

  void _showImageInDialog(BuildContext context, String assetImagePath) {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.7),
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              backgroundColor: Colors.black,
              body: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: PhotoView(
                  imageProvider: AssetImage(assetImagePath),
                  backgroundDecoration:
                      const BoxDecoration(color: Colors.black),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
