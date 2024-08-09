import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Berserk Image'),
        ),
        body: Center(
          child: SizedBox(
            height: 400,
            width: 300,
            child: CachedNetworkImage(
              imageUrl:
                  'https://m.media-amazon.com/images/I/31M+tWjkt0L._AC_UF894,1000_QL80_.jpg',
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            // decoration: BoxDecoration(
            //     color: Colors.blue,
            //     boxShadow: [
            //       BoxShadow(
            //           blurRadius: 20, color: Colors.green, spreadRadius: 5)
            //     ],
            //     image: DecorationImage(
            //         image: AssetImage('assets/img1.jpg'), fit: BoxFit.cover),
            //     borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}
