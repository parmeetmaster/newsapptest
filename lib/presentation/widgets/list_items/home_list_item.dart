import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeListItem extends StatelessWidget {
  final String imageUrl;
  final String headline;
  final String description;
  final String publishDate;
  final String source;

  const HomeListItem({
    Key? key,
    required this.imageUrl,
    required this.headline,
    required this.description,
    required this.publishDate,
    required this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      shadowColor: Colors.grey.withOpacity(0.5),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(height: 8.0),
         Padding(padding: EdgeInsets.all(8),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisSize: MainAxisSize.min,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   width: 4.0,
                   height: 4.0,
                   margin: const EdgeInsets.symmetric(horizontal: 2.0),
                   decoration: BoxDecoration(
                     color: Colors.grey,
                     shape: BoxShape.circle,
                   ),
                 ),
                 Container(
                   width: 4.0,
                   height: 4.0,
                   margin: const EdgeInsets.symmetric(horizontal: 2.0),
                   decoration: BoxDecoration(
                     color: Colors.grey,
                     shape: BoxShape.circle,
                   ),
                 ),
                 Container(
                   width: 4.0,
                   height: 4.0,
                   margin: const EdgeInsets.symmetric(horizontal: 2.0),
                   decoration: BoxDecoration(
                     color: Colors.grey,
                     shape: BoxShape.circle,
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 8.0),
             Text(
               headline,
               style: const TextStyle(
                 fontSize: 18.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
             const SizedBox(height: 8.0),
             Text(
               description,
               style: const TextStyle(
                 fontSize: 14.0,
                 color: Colors.grey,
               ),
               maxLines: 3,
               overflow: TextOverflow.ellipsis,
             ),
             const SizedBox(height: 8.0),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   'Published: $publishDate',
                   style: const TextStyle(fontSize: 12.0, color: Colors.grey),
                 ),
                 Text(
                   source,
                   style: const TextStyle(fontSize: 12.0, color: Colors.grey),
                 ),
               ],
             ),
           ],

         ),

         )
        ],
      ),
    );
  }
}
