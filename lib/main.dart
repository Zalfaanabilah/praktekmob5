import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/note_provider.dart';
import 'screens/add_note_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => const HomePage(),
          '/addNote': (BuildContext context) => const AddNotePage(),
        },
      ),
    );
  }
}
