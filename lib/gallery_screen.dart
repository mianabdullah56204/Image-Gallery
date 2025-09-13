import 'package:flutter/material.dart';
import 'package:image_gallery_app/ful_screen.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final List<Map<String, String>> favouriteItems = const [
    {
      "image": "https://picsum.photos/id/237/500/300",
      "caption": "🐶 My Dog, Buddy",
    },
    {
      "image": "https://picsum.photos/id/1080/500/300",
      "caption": "🍕 Perfect Pepperoni Pizza",
    },
    {
      "image": "https://picsum.photos/id/1018/500/300",
      "caption": "🏔 Hiking Adventure",
    },
    {
      "image": "https://picsum.photos/id/1015/500/300",
      "caption": "🏖 Beautiful Beach",
    },
    {
      "image": "https://picsum.photos/id/1003/500/300",
      "caption": "🌃 City Night Lights",
    },
    {
      "image": "https://picsum.photos/id/1025/500/300",
      "caption": "🐱 Cute Cat",
    },
    {
      "image": "https://picsum.photos/id/1040/500/300",
      "caption": "🌸 Flower Blossom",
    },
    {
      "image": "https://picsum.photos/id/1043/500/300",
      "caption": "🚴 Cycling Journey",
    },
    {
      "image": "https://picsum.photos/id/1069/500/300",
      "caption": "🌲 Forest Walk",
    },
    {
      "image": "https://picsum.photos/id/1074/500/300",
      "caption": "✈️ Travel Moments",
    },
    {
      "image": "https://picsum.photos/id/1084/500/300",
      "caption": "🎶 Music & Relax",
    },
    {
      "image": "https://picsum.photos/id/109/500/300",
      "caption": "📚 Reading Time",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Favourite Things")),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: favouriteItems.length,
        itemBuilder: (context, index) {
          final item = favouriteItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullScreen(
                    imageUrl: item["image"]!,
                    caption: item["caption"]!,
                  ),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                  bottom: Radius.circular(8),
                ),
              ),
              elevation: 8,
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: item["image"]!,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Image.network(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        item["caption"]!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
