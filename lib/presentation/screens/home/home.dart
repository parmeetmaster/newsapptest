import 'package:company_test/controller/home/home_screen_controller.dart';
import 'package:company_test/data_sources/services/native/native_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:company_test/presentation/screens/description/news_detail_screen.dart';
import 'package:company_test/presentation/widgets/list_items/home_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/appbar/home_app_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.builder(
          controller: ref.read(homeScreenProvider).scrollController,
          itemCount:
              ref.watch(homeScreenProvider).articles.length + (true ? 1 : 0),
          itemBuilder: (context, index) {
            if (index < ref.read(homeScreenProvider).articles.length) {
              final article = ref.read(homeScreenProvider).articles[index];
              return ListTile(
                title: HomeListItem(
                  imageUrl: article.urlToImage,
                  headline: article.title ?? "",
                  description: article.description ?? "",
                  publishDate: article.publishedAt == null
                      ? "Na"
                      : article.showDate ?? "",
                  source: article.source?.name ?? "",
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => NewsDetailScreen(element:ref.read(homeScreenProvider).articles[index])));
                  },
                ),
              );
            } else {
              // Show loading spinner at the end of the list
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
