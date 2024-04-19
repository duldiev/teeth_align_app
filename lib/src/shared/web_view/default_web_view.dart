import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class DefaultWebView extends StatefulWidget {
  const DefaultWebView({super.key, required this.url});

  final String url;

  @override
  State<DefaultWebView> createState() => _DefaultWebViewState();
}

class _DefaultWebViewState extends State<DefaultWebView> {
  late WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: AppBar(
        title: Text(widget.url),
        backgroundColor: AppColors.pureWhite,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        foregroundColor: AppColors.dark,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
