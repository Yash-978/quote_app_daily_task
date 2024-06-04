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
  void initState() {
    quoteModel = QuoteModel.toList(QuoteList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(centerTitle: true,title: Text('Quotes'),
        leading: Icon(Icons.menu),),

        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                  quoteModel!.quoteModel_List.length,
                  (index) => Card(
                        color: Colors.primaries[
                            Random().nextInt((Colors.primaries.length))],
                        child: ListTile(
                          title:
                              Text(quoteModel!.quoteModel_List[index].quote!),
                          subtitle:
                              Text(quoteModel!.quoteModel_List[index].author!,style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                      ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quoteModel_List.length);
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.accents[
                  Random().nextInt((Colors.accents.length))],
                      title: ListTile(

                        title: Text(quoteModel!.quoteModel_List[x].author!,style: TextStyle(fontSize: 35,color: Colors.white),),
                        subtitle: Text(quoteModel!.quoteModel_List[x].quote!,style: TextStyle(fontSize: 25,),),
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Ok')),
                      ],
                    ));
          },
          child: Icon(Icons.add_circle_outline),
        ),
      ),
    );
  }
}
