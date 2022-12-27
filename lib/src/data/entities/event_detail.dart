import 'package:equatable/equatable.dart';

class EventDetail extends Equatable {
  final String league;
  final String homeTeam;
  final String awayTeam;
  final String? homeScore;
  final String? awayScore;
  final String status;
  final String dateEvent;

  const EventDetail({
    required this.league,
    required this.homeTeam,
    required this.awayTeam,
    this.homeScore,
    this.awayScore,
    required this.status,
    required this.dateEvent,
  });

  @override
  List<Object> get props => [league, homeTeam, awayTeam, dateEvent, status];

  @override
  bool get stringify => true;
}
