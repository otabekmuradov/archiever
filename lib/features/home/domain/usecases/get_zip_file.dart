import 'package:archiever/features/home/domain/repository/extractor_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class GetZipFile extends UseCase<void, NoParams> {
  final ExtractorRepo repo;

  GetZipFile({required this.repo});

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await repo.getZipFile();
  }
}