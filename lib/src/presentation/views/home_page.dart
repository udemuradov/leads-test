import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leads_test/src/core/utils/app_images.dart';
import 'package:leads_test/src/presentation/bloc/home/home_bloc.dart';
import 'package:leads_test/src/presentation/widgets/home_page/home_event_list_widget.dart';
import 'package:leads_test/src/presentation/widgets/home_page/home_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late WebViewController webViewController;
  late bool webViewEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          elevation: 0,
          title: Center(
            child: Image.asset(
              AppImages.preloader,
              fit: BoxFit.contain,
              width: 60,
            ),
          ),
          actions: [
            BlocBuilder<HomeBloc, HomeState>(  //Выход из webview мог бы сделать по другому но веремени осталось мало.
              builder: (context, state) {
                if (state is HomeRedirectUrl) {
                  return IconButton(
                  onPressed: () {
                    BlocProvider.of<HomeBloc>(context).add(GetEventList());
                    setState(() {
                      webViewEnabled = false;
                    });
                  },
                  icon: const Icon(Icons.close_rounded),
                  color: Colors.white,
                  iconSize: 40,
                );
                }
                else{
                  return const SizedBox();
                }
              },
            )
          ],
        ),
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is HomeRedirectUrl) {
            webViewEnabled = true;
            return  HomeWebView(url: state.url);
          }
          if (state is HomeEventListLoaded) {
            return HomeEventListWidget(listEvent: state.eventList);
          }
          if (state is HomeError) {
            return const Center(
              child: Text(
                'some error',
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            return const SizedBox();
          }
        }));
  }
}
