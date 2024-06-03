import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/QuoteApp/quoteModel.dart';
import 'package:quote_app_daily_task/Utils/QuotesList.dart';
QuoteModel? quoteModel;

class Quote_HomeScreen extends StatefulWidget {
  const Quote_HomeScreen({super.key});

  @override
  State<Quote_HomeScreen> createState() => _Quote_HomeScreenState();
}

class _Quote_HomeScreenState extends State<Quote_HomeScreen> {
  void initState()
  {
    quoteModel = QuoteModel.toList(QuoteList);
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quoteModel_List.length);
            showDialog(context: context, builder: (context)=> AlertDialog(
              title:  Column(
                children: [
                  Text(quoteModel!.quoteModel_List[x].author!),
                  Text(quoteModel!.quoteModel_List[x].quote!),
                ],
              ),

            ));
          },child: Icon(Icons.add_circle_outline),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(quoteModel!.quoteModel_List.length, (index) => Card(
                child: Column(
                  children: [
                    Text(quoteModel!.quoteModel_List[index].quote!),
                    Text(quoteModel!.quoteModel_List[index].author!),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
