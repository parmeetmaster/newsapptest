
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ToastService {
  bool showErrors = false;

  ToastService();

  void showRoundedFlushBar(String? title, String? message,
      {Function? onComplete}) {
    Fluttertoast.showToast(
            msg: title ?? "",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0)
        .then((e) => onComplete?.call());
  }
}
