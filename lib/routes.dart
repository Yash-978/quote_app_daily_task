import 'package:flutter/material.dart';

import 'DialogueBox/dialogueBox.dart';
import 'QuoteApp/QuotesHomeScreen.dart';

class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={

    // '/':(context)=>DialogueBox(),
    // '/quote':(context)=>Quote_HomeScreen(),
    '/':(context)=>Quote_HomeScreen(),

  };
}