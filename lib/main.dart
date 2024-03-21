import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubit.dart';
import 'package:notes_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:notes_app/cubits/simple_bloc_observer.dart';
import 'package:notes_app/models/note_model/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> ShowNotesCubit()),
        BlocProvider(create: (context) => AddNotesCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'FiraCode'),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
        // routes: {
        //   'edit_notes': (context) => const EditNoteView(),
        // },
      ),
    );
  }
}
