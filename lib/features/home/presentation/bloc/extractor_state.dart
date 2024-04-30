part of 'extractor_bloc.dart';

@freezed
class ExtractorState with _$ExtractorState {
  const factory ExtractorState({
    Failure? error,
    @Default(Statuses.initial) Statuses status,
  
  }) = _ExtractorState;
}
