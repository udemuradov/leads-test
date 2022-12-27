import 'package:leads_test/src/data/entities/event_detail.dart';

class EventDetailModel extends EventDetail {
  const EventDetailModel({
    required String league,
    required String homeTeam,
    required String awayTeam,
    String? homeScore,
    String? awayScore,
    required String status,
    required String dateEvent,
  }) : super(
          league: league,
          homeTeam: homeTeam,
          awayTeam: awayTeam,
          homeScore: homeScore,
          awayScore: awayScore,
          status: status,
          dateEvent: dateEvent,
        );

  factory EventDetailModel.fromJson(Map<String, dynamic> json) {
    return EventDetailModel(
      league: json['strLeague'] as String,
      homeTeam: json['strHomeTeam'] as String,
      awayTeam: json['strAwayTeam'] as String,
      homeScore: json['intHomeScore'] as String?,
      awayScore: json['intAwayScore'] as String?,
      dateEvent: json['dateEvent'] as String,
      status: json['strStatus'] as String,
    );
  }
}
