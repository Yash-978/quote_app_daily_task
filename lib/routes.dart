import 'package:flutter/material.dart';

import 'DialogueBox/dialogueBox.dart';

class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={

    '/':(context)=>DialogueBox(),

  };
}