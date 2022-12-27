import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:leads_test/src/data/entities/list_event.dart';
import 'package:leads_test/src/data/repositories/api_repositories.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    final ApiRepository apiRepository = ApiRepository();
    on<GetRedirectUrl>((event, emit) async {
      try {
        emit(HomeLoading());
        final String url = await apiRepository.redirectUrl();
        if (url == "https://google.com/" || url.isEmpty) {
          add(GetEventList());            //Comment this line and uncomment bottom line for testing redirect.
          // emit(HomeRedirectUrl(url));
  
        }
        if (url == "https://www.thesportsdb.com/") {
          emit(HomeRedirectUrl(url));
        }
      } catch (e) {
        print("network error");
      }
    });
    on<GetEventList>((event, emit) async {
      try {
        emit(HomeLoading());
        final ListEvent eventList = await apiRepository.fetchEventList();
        emit(HomeEventListLoaded(eventList));
      } catch (e) {
        print("network error");
      }
    });
  }
}
