



import 'package:company_test/data_sources/services/native/native_service.dart';
import 'package:company_test/injectable/inject.dart';
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
      appBar:  HomeAppBar(),
      body: ListView(children: [
        Text("${getIt<NativeService>().getApiKey}"),
        HomeListItem(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Shaikha_Khalaf_Al_Mohammed%2C_Mehbubeh_Akhlaghi%2C_Bahya_Al-Hamad_2011_%28cropped%29.jpg',
          headline: 'This is a sample headline',
          description: 'This is a three-line description that gives a brief overview or summary of the content...',
          publishDate: '2024-10-29',
          source: 'Source Name',
        )
      ],),
    );
  }
}
