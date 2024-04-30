import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';


abstract class ExtractorRemoteDataSource {
  Future<void> getZipFile();
}

class ExtractorRemoteDataSourceImpl extends ExtractorRemoteDataSource {
  final Dio dio;

  ExtractorRemoteDataSourceImpl({required this.dio});


  @override
  Future<void> getZipFile() async {
    try {
      Response response = await dio.get(
          'https://github.com/otabekmuradov/audio_book/archive/refs/heads/main.zip',
          options: Options(responseType: ResponseType.bytes));

      Directory tempDir = await getTemporaryDirectory();
      String tempPath = tempDir.path;
      String zipFileName = '$tempPath/file.zip';

      File zipFile = File(zipFileName);
      await zipFile.writeAsBytes(response.data);

      Archive archive = ZipDecoder().decodeBytes(zipFile.readAsBytesSync());
      for (ArchiveFile file in archive) {
        String filename = '$tempPath/${file.name}';
        if (file.isFile) {
          File outFile = File(filename);
          outFile = await outFile.create(recursive: true);
          await outFile.writeAsBytes(file.content);
        }
      }

      print('Zip file extracted successfully!');
    } catch (e) {
      print('Error: $e');
    }
  }
}
