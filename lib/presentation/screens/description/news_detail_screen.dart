import 'package:company_test/data_sources/models/response/news_home_screen_model/news_home_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewsDetailScreen extends ConsumerStatefulWidget {
  final Article element;

  NewsDetailScreen({Key? key, required this.element}) : super(key: key);

  @override
  ConsumerState<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends ConsumerState<NewsDetailScreen> {
  // Random placeholder data
  final String headline = 'Exciting News Headline Goes Here';

  final String source = 'News Source';

  final String publishDate = 'Oct 29, 2024';

  final String description =
      'This is a detailed description of the news article. It provides insights, background information, and relevant details for the readers.';

  final String imageUrl = 'https://via.placeholder.com/400';

  void _shareNews(BuildContext context) {
    // Logic to share news article
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('News shared successfully!')),
    );
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
            icon: Icon(Icons.share),
            onPressed: () => _shareNews(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // News Image
            Image.network(
              widget.element.urlToImage ?? "",
              width: double.infinity,
              height: 200,
              errorBuilder: (ctx, err, stack) => Container(
                color: Colors.redAccent,
                child: const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.white,
                    size: 48.0,
                  ),
                ),
              ),
              fit: BoxFit.cover,
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
                onPressed: _readNews,
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
