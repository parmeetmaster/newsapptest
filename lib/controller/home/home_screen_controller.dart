import 'package:company_test/data_sources/models/common/api_failure/api_failure.dart';
import 'package:company_test/data_sources/models/response/news_home_screen_model/news_home_screen_model.dart';
import 'package:company_test/data_sources/repo/network/home_repo/i_home_repo.dart';
import 'package:company_test/data_sources/services/audio/text_to_speech_service.dart';
import 'package:company_test/data_sources/services/network/connectivity_service/connectivity_service.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../core/enums.dart';

@injectable
class HomeScreenController extends ChangeNotifier {
//repo , services

  ConnectivityService connectivityService;
  TextToSpeechService _speechService;
  IHomeRepo _homeRepo;

  //objects
  int pageIndex = 1;
  List<Article> articles = [];
  AudioStates audioState = AudioStates.Default;
  ScrollController scrollController = ScrollController();

  bool hasMoreData = true;

  HomeScreenController(
      this.connectivityService, this._speechService, this._homeRepo);

  @PostConstruct()
  void init() {
    print("init done");

    connectivityService.subscript1ion.listen((connectivityResult) {
      if (audioState == AudioStates.Default &&
          !connectivityResult.contains(ConnectivityResult.none)) {
        audioState = AudioStates.Online;
        return; // Exit on the first run
      }

      if (connectivityResult.contains(ConnectivityResult.none)) {
        audioState = AudioStates.Offline;
        _speechService
            .speak("You are offline.Please enable Internet for latest news");
      } else {
        audioState = AudioStates.Online;
        _speechService.speak("You are online.Stay Tune with latest news");
      onRefesh();
      }
      notifyListeners();
    });

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        _loadMoreData();
      }
    });
    onRefesh();
  }

  void onRefesh() {
    pageIndex = 1;
    this.articles.clear();
    fetchHomeScreen();
  }

  void _loadMoreData() {
    pageIndex++;
    fetchHomeScreen();
  }

  Future fetchHomeScreen() async {
    Either<ApiFailure, Response> response =
        await _homeRepo.fetchHomeNews(pageIndex: pageIndex);
    response.fold((error) {}, (response) {
      final List<Article> newsArticles =
          (NewsHomeScreenModel.fromJson(response.data).articles ?? [])
              .map((e) => e.copyWith(
                  showDate: DateFormat('dd-MMM-yyyy')
                      .format(e.publishedAt ?? DateTime.now())))
              .toList();
      articles.addAll(newsArticles);
      if (newsArticles.isEmpty) {
        this.hasMoreData = false;
      }
    });

    notifyListeners();
  }
}

final homeScreenProvider =
    ChangeNotifierProvider((ref) => getIt<HomeScreenController>());
