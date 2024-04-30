
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repository/extractor_repo.dart';
import '../datasources/extractor_remote_data_source.dart';

class ExtractorRepoImpl extends ExtractorRepo {
  final ExtractorRemoteDataSource remoteDataSource;

  ExtractorRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, void>> getZipFile() async {
    try {
      final result = await remoteDataSource.getZipFile();
      return Right(result);
    } on ServerFailure catch (e) {
      return Left(e);
    }
  }
}
