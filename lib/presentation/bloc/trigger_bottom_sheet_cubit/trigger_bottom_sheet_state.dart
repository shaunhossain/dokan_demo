part of 'trigger_bottom_sheet_cubit.dart';

@freezed
class TriggerBottomSheetState with _$TriggerBottomSheetState {
  const factory TriggerBottomSheetState.initial() = _Initial;
  const factory TriggerBottomSheetState.open() = _Open;
  const factory TriggerBottomSheetState.close() = _Close;
}