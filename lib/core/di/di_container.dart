import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/setup_home.dart';

GetIt ls = GetIt.instance;

Future<void> setupDI() async {
  setUpHome();

  ls.registerLazySingleton(() => Dio());
}
