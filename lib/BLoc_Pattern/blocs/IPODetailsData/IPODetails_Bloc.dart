import 'package:bloc/bloc.dart';
import '../../repo/ipo_repo.dart';
import 'IPODetails_events.dart';
import 'IPODetails_states.dart';

class IPOBloc extends Bloc<IPOEvent, IPOState> {
  // IPOBloc() : super(IPODetailsInitial()) {
  //   final IPODetailsRepository _apiRepository = IPODetailsRepository();
  //
  //   on<GetIPODetailsList>((event, emit) async {
  //     try {
  //       emit(IPODetailsLoading());
  //       final mList = await _apiRepository.fetchIPOList();
  //       emit(IPODetailsLoaded(mList));
  //       print("Active IPO List from data");
  //       print("========================================================");
  //       print("9999999999999999999999");
  //       print(mList);
  //
  //       // emit(IPODetailsError(mList.message));
  //       if (mList != null) {
  //         emit(IPODetailsError(mList.message));
  //       }
  //           } on NetworkError {
  //       emit(const IPODetailsError("Failed to fetch data. is your device online?"));
  //     }
  //   });
  // }

  final IPODetailsRepository _apiRepository;

  IPOBloc(this._apiRepository) : super(IPODetailsLoading()) {
    on<GetIPODetailsListEvent>((event, emit) async {
      emit(IPODetailsLoading());
      try {
        final users = await _apiRepository.fetchIPOList();
        emit(IPODetailsLoaded(users));
      } catch (e) {
        emit(IPODetailsError(e.toString()));
      }
    });
  }
}