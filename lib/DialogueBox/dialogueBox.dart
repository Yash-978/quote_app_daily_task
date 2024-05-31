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
      children: [
        // TextButton(onPressed: () {
        //   showDialog<String>(
        //     context: context,
        //     builder: (BuildContext context) => Dialog(
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: <Widget>[
        //             const Text('This is a typical dialog.'),
        //             const SizedBox(height: 15),
        //             TextButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //               child: const Text('Close'),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // }, child: child)
      ],
    ),


    );
  }
}
