import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String imageUrl) {
    if (kIsWeb) {
      // Open image in new tab if it's a web platform, especially useful for Android Web
      _launchImageInBrowser(imageUrl);
    } else {
      // Default image viewer for mobile and desktop
      _showImageInDialog(context, imageUrl);
    }
  }

  void _launchImageInBrowser(String imageUrl) async {
    // This method will open the image in a new browser tab
    if (await canLaunch(imageUrl)) {
      await launch(imageUrl);
    } else {
      throw 'Could not launch $imageUrl';
    }
  }

  void _showImageInDialog(BuildContext context, String imageUrl) {
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
                  imageProvider: AssetImage(imageUrl),
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
