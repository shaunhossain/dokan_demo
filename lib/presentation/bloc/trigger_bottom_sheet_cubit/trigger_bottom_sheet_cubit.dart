import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'trigger_bottom_sheet_state.dart';

part 'trigger_bottom_sheet_cubit.freezed.dart';

@singleton
class TriggerBottomSheetCubit extends Cubit<TriggerBottomSheetState> {
  TriggerBottomSheetCubit() : super(const TriggerBottomSheetState.initial()) {
    openSheet();
    closeSheet();
  }

  void openSheet() {
    emit(const TriggerBottomSheetState.initial());
    emit(const TriggerBottomSheetState.open());
  }

  void closeSheet() {
    emit(const TriggerBottomSheetState.close());
  }
}
