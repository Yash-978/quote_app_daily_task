import 'package:flutter/material.dart';

import 'DialogueBox/dialogueBox.dart';
import 'Invoice_Bill_Generater/DetailScreen.dart';
import 'Invoice_Bill_Generater/Invoice.dart';
import 'Invoice_Bill_Generater/PdfScreen.dart';
import 'QuoteApp/QuotesHomeScreen.dart';
import 'Toggle_List/toggle.dart';

class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={

    // '/':(context)=>DialogueBox(),
    // '/quote':(context)=>Quote_HomeScreen(),
    // '/':(context)=>Quote_HomeScreen(),
    // '/':(context)=>ToggleList(),
    '/':(context)=>InvoicePage(),
    '/detail':(context)=>DetailPage(),
    '/pdf':(context)=>PdfPage(),


  };
}