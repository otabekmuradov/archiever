import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class ExtractorRepo {
  Future<Either<Failure, void>> getZipFile();
}
