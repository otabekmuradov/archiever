import 'package:archiever/core/usecases/usecase.dart';
import 'package:archiever/features/home/domain/usecases/get_zip_file.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/statuses.dart';
import '../../../../core/errors/failures.dart';

part 'extractor_event.dart';
part 'extractor_state.dart';
part 'extractor_bloc.freezed.dart';

class ExtractorBloc extends Bloc<ExtractorEvent, ExtractorState> {
  final GetZipFile getZipFile;

  ExtractorBloc({required this.getZipFile}) : super(const ExtractorState()) {
    on<_GetZipFile>(_getZipFile);
  }

  Future<void> _getZipFile(
    _GetZipFile event,
    Emitter<ExtractorState> emit,
  ) async {
    emit(state.copyWith.call(status: Statuses.loading));

    final response = await getZipFile.call(NoParams());

    response.fold(
      (left) => emit(
        state.copyWith.call(
          status: Statuses.error,
          error: left,
        ),
      ),
      (right) {
        emit(
          state.copyWith.call(
            status: Statuses.success,
          ),
        );
      },
    );
  }
}