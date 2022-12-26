import 'package:equatable/equatable.dart';

class Card extends Equatable {
  final String league;
  final String homeTeam;
  final String awayTeam;
  final int homeScore;
  final int awayScore;
  final String dateEvent;

  const Card({
    required this.league,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    required this.dateEvent,
  });

  @override
  List<Object> get props => [league, homeTeam, awayTeam, homeScore, awayScore, dateEvent];

  @override
  bool get stringify => true;
}


class CardModel extends Card {
  
  const CardModel({
    required   String league,
    required String homeTeam,
    required String awayTeam,
    required int homeScore,
    required int awayScore,
    required String dateEvent,

  }) : super(
          league: league,
          homeTeam: homeTeam,
          awayTeam: awayTeam,
          homeScore: homeScore,
          awayScore: awayScore,
          dateEvent: dateEvent,
        );

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      league: json['strLeague'] as String,
      homeTeam: json['strHomeTeam'] as String,
      awayTeam: json['strAwayTeam'] as String,
      homeScore: json['intHomeScore'] as int,
      awayScore: json['intAwayScore'] as int,
      dateEvent: json['dateEvent'],
    );
  }
}