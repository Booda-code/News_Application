import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/custom_app_bar.dart';

class WebView extends StatefulWidget {
  const WebView({super.key, required this.link});

  final String link;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  get controller => WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse(widget.link));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: WebViewWidget(controller: controller,),
    );
  }
}
