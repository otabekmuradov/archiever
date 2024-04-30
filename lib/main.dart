import 'package:archiever/features/home/presentation/bloc/extractor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/di_container.dart';
import 'features/home/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ZIP EXRTACTOR",
      home: BlocProvider(
        create: (context) => ls<ExtractorBloc>(),
        child: const HomePage(),
      ),
    );
  }
}
