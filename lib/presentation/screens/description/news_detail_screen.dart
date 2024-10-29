import 'package:cached_network_image/cached_network_image.dart';
import 'package:company_test/controller/description/description_controller.dart';
import 'package:company_test/data_sources/models/response/news_home_screen_model/news_home_screen_model.dart';
import 'package:company_test/data_sources/services/ui_service/ui_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewsDetailScreen extends ConsumerStatefulWidget {
  final Article element;

  NewsDetailScreen({Key? key, required this.element}) : super(key: key);

  @override
  ConsumerState<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends ConsumerState<NewsDetailScreen> {



  void _shareNews(String  s) {
    // Logic to share news article
 getIt<UrlService>().openBrowser(s)
     ;
  }

  void _readNews() {
    // Placeholder for text-to-speech functionality
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.public),
            onPressed: () => _shareNews(widget.element.url??""),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // News Image
        Hero(
          tag: widget. element.title??"",
          child: CachedNetworkImage(
          imageUrl:widget. element.urlToImage ?? "",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              color: Colors.grey[300], // Placeholder color
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              color: Theme.of(context).primaryColor,
              child: const Center(
                child: Icon(
                  Icons.error,
                  color: Colors.white,
                  size: 48.0,
                ),
              ),
            ),
          ),
        ),

            // Headline
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.element.title ?? "",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Source and Publish Date Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.source, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(widget.element.source?.name ?? "",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(widget.element.showDate ?? "",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),

            // "Read News for Me" Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed: ()=>ref.read(descriptionProvider).readNews(widget.element.description??""),
                icon: Icon(Icons.volume_up),
                label: Text('Read News for Me'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            // News Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.element.description ?? "",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
