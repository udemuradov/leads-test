import 'package:flutter/material.dart';
import 'package:leads_test/src/core/utils/app_colors.dart';
import 'package:leads_test/src/core/utils/app_images.dart';
import 'package:leads_test/src/core/utils/app_theme_text.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174,
      child: Card(
        color: AppColors.cardBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 7),
                height: 29,
                decoration: BoxDecoration(
                    color: AppColors.appBarColor,
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                      AppImages.cup,
                      height: 20,
                    )),
                    Expanded(
                        flex: 4,
                        child: Text(
                          "brazil: seria a".toUpperCase(),
                          style: ThemeText.cardHeader,
                        )),
                    Expanded(
                        child: Text(
                      "23.03".toUpperCase(),
                      style: ThemeText.cardHeader,
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Live",
                style: TextStyle(
                    color: AppColors.orange,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 61,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Club Guarani",
                      textAlign: TextAlign.center,
                      style: ThemeText.textBold,
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: AppColors.dividerColor,
                    ),
                    Text(
                      "Club Guarani",
                      style: ThemeText.textBold,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
