import 'package:equatable/equatable.dart';
import 'package:leads_test/src/data/model/event_detail_model.dart';

class ListEvent extends Equatable {
  final List<EventDetailModel> event;

  const ListEvent({required this.event});

  @override
  List<Object> get props => [event];

  @override
  bool get stringify => true;
}
