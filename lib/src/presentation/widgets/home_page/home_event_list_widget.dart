import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:leads_test/src/core/utils/app_colors.dart';
import 'package:leads_test/src/core/utils/app_images.dart';
import 'package:leads_test/src/core/utils/app_theme_text.dart';
import 'package:leads_test/src/data/entities/list_event.dart';
import 'package:leads_test/src/data/model/event_detail_model.dart';

class HomeEventListWidget extends StatelessWidget {
  final ListEvent listEvent;
  const HomeEventListWidget({super.key, required this.listEvent});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: listEvent.event.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 18),
            child: EventCardWidget(card: listEvent.event[index]),
          );
        });
  }
}

class EventCardWidget extends StatelessWidget {
  final EventDetailModel card;
  const EventCardWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final DateTime parsedTime = DateTime.parse(card.dateEvent);
    final DateFormat formatter = DateFormat('dd.MM');
    String? status = '';
    if (card.status == 'FT' || card.status == "AOT") {
      status = 'Finished';
    }
    if (card.status == 'HT' || card.status == "Q3") {
      status = 'Live';
    }
    if (card.status == 'NS') {
      status = '-';
    }
    return Card(
      color: AppColors.cardBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              height: 33,
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
                        card.league.toUpperCase(),
                        style: ThemeText.cardHeader,
                      )),
                  Expanded(
                      child: Text(
                    formatter.format(parsedTime),
                    style: const TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              status,
              style: const TextStyle(
                  color: AppColors.orange,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 61,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      card.homeTeam,
                      textAlign: TextAlign.center,
                      style: ThemeText.textBold,
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: AppColors.dividerColor,
                  ),
                  Expanded(
                    child: Text(
                      card.awayTeam,
                      textAlign: TextAlign.center,
                      style: ThemeText.textBold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              height: 29,
              decoration: BoxDecoration(
                  color: AppColors.appBarColor,
                  borderRadius: BorderRadius.circular(3)),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    card.homeScore ?? '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: card.awayScore != null
                            ? AppColors.orange
                            : AppColors.greyText),
                  )),
                  Expanded(
                      child: Text(
                    card.awayScore ?? '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: card.awayScore != null
                            ? AppColors.orange
                            : AppColors.greyText),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
