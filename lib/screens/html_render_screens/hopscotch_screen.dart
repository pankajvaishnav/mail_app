import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HopscotchScreen extends StatefulWidget {
  const HopscotchScreen({super.key});

  @override
  State<HopscotchScreen> createState() => _HopscotchScreen();
}

class _HopscotchScreen extends State<HopscotchScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
    _controller.loadFlutterAsset('assets/mailbody2.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.archive_outlined),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.delete_outline),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.mail_outline),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
