import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'more_info_state.dart';

class MoreInfoCubit extends Cubit<MoreInfoState> {
  MoreInfoCubit() : super(MoreInfoInitial());
  String? Text;
  Future<void> viewmore({required text, required bool showmore}) async {
    if (showmore = true) {
      Text = text;
      emit(showFullTextstate());
    } else if (showmore = false) {
      Text = text;
      emit(showbriefstate());
    }
  }
}
