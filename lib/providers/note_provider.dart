import 'package:flutter/material.dart';
import 'package:praktikum5/models/note_model.dart';

class NoteProvider extends ChangeNotifier {
  List<NoteModel> noteList = [];

  void addNote(NoteModel note) {
    noteList.add(note);
    notifyListeners();
  }
}
