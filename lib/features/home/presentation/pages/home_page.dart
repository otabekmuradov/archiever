import 'package:archiever/core/enums/statuses.dart';
import 'package:archiever/features/home/presentation/bloc/extractor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'ZIP EXTRACTOR',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ExtractorBloc, ExtractorState>(
        builder: (context, state) {
          return Center(
            child: state.status == Statuses.success
                ? const Text(
                    'Zip file extracted successfully!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                : const Text('SMTH WENT WRONG'),
          );
        },
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          context.read<ExtractorBloc>().add(const ExtractorEvent.getZipFile());
        },
        child: const Text(
          'DOWNLOAD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
