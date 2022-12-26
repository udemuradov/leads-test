import 'package:flutter/material.dart';
import 'package:leads_test/src/core/utils/app_images.dart';
import 'package:leads_test/src/presentation/widgets/home_page/home_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: HomeCardWidget(),
      ),
    );
  }
}
