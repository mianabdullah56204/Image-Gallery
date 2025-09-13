import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget {
  final String imageUrl;
  final String caption;

  const FullScreen({super.key, required this.imageUrl, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(caption)),
      body: Center(
        child: Hero(tag: imageUrl, child: Image.network(imageUrl)),
      ),
    );
  }
}
