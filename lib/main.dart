import 'package:flutter/material.dart';
import 'package:image_gallery_app/gallery_screen.dart';

void main() {
  runApp(const ImageGalleryApp());
}

class ImageGalleryApp extends StatelessWidget {
  const ImageGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task 9 - Unique Image Gallery",
      theme: ThemeData(
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF2193b0),
          foregroundColor: Colors.white,
          toolbarHeight: 70,
          titleTextStyle: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: GalleryScreen(),
    );
  }
}
