import 'package:flutter/material.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add,
        size: 30,
        color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}


