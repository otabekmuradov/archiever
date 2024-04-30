import '../../core/di/di_container.dart';
import 'data/datasources/extractor_remote_data_source.dart';
import 'data/repository/extractor_repo_impl.dart';
import 'domain/repository/extractor_repo.dart';
import 'domain/usecases/get_zip_file.dart';
import 'presentation/bloc/extractor_bloc.dart';

Future<void> setUpHome() async {
  //! Features - Home
  // Bloc
  ls.registerFactory(
    () => ExtractorBloc(
      getZipFile: ls(),
    ),
  );

  // repositories
  ls.registerLazySingleton<ExtractorRepo>(
    () => ExtractorRepoImpl(
      remoteDataSource: ls(),
    ),
  );

  //Usecases
  ls.registerLazySingleton(
    () => GetZipFile(
      repo: ls(),
    ),
  );

  //DataSources
  ls.registerLazySingleton<ExtractorRemoteDataSource>(
    () => ExtractorRemoteDataSourceImpl(
      dio: ls(),
    ),
  );
}
