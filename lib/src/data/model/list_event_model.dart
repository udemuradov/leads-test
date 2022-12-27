import 'package:leads_test/src/data/entities/list_event.dart';
import 'package:leads_test/src/data/model/event_detail_model.dart';

class ListEventModel extends ListEvent {
  const ListEventModel({required List<EventDetailModel> event})
      : super(
          event: event,
        );

  factory ListEventModel.fromJson(Map<String, dynamic> json) {
    return ListEventModel(
        event: List<EventDetailModel>.from(
            json["events"].map((e) => EventDetailModel.fromJson(e))));
  }
}
