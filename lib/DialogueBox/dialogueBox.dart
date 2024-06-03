import 'package:flutter/material.dart';
class DialogueBox extends StatefulWidget {
  const DialogueBox({super.key});

  @override
  State<DialogueBox> createState() => _DialogueBoxState();
}

class _DialogueBoxState extends State<DialogueBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('A dialog in Flutter is usually an overlay on top of the app content. It can be dismissed by tapping outside the dialog popup, pressing a button, or completing an action within the dialog box'),
                actions: [
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).pop();

                    }, child: Text('Cancel '),),
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).pop();


                    }, child: Text('Ok'),)
                ],
              );
            },);
          }, child: Text('Show Dialog Box')),
        ),

      ],
    ),


    );
  }
}
