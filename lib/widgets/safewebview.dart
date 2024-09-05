import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:practice/widgets/safewebview.dart';

class SafeWebView extends StatelessWidget {
  final String?url;
   SafeWebView({this.url});
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
    );
  }
}
