import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leads_test/src/presentation/bloc/home/home_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeWebView extends StatelessWidget {
  final String url;
  const HomeWebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final HomeBloc _bloc = BlocProvider.of<HomeBloc>(context);
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
