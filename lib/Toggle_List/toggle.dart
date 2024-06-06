import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/QuoteApp/QuotesHomeScreen.dart';
import 'package:quote_app_daily_task/QuoteApp/quoteModel.dart';

import '../Utils/QuotesList.dart';

QuoteModel? quoteModel;

class ToggleList extends StatefulWidget {
  const ToggleList({super.key});

  @override
  State<ToggleList> createState() => _ToggleListState();
}

bool changeToggle = false;

// IconData selected = IconData(Icons.menu)
Set<String> _selected = {'ListView'};

class _ToggleListState extends State<ToggleList> {
  @override
  void initState() {
    super.initState();
    quoteModel = QuoteModel.toList(QuoteList);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Toggle'),
        actions: [
          SegmentedButton(
            multiSelectionEnabled: false,
            segments: [
              ButtonSegment<String>(
                  value: 'ListView',
                  label: Text(
                    'ListView',
                    style: TextStyle(fontSize: 20),
                  ),
                  icon: const Icon(Icons.list_alt)),
              ButtonSegment<String>(
                value: 'GridView',
                label: Text('GridView', style: TextStyle(fontSize: 20)),
                icon: const Icon(Icons.apps_rounded),
              ),
            ],
            selected: _selected,
            onSelectionChanged: (Set<String> newselection) {
              setState(() {
                _selected = newselection;
                changeToggle = !changeToggle;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          (changeToggle)?
          GridView.builder(
            itemCount: quoteModel!.quoteModel_List.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1
            ),
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(
                  quoteModel!.quoteModel_List[index].quote!,style: TextStyle(

                ),
                ),
                subtitle: Text(
                  quoteModel!.quoteModel_List[index].author!,
                ),
              ),
            ),
          ):
          ListView.builder(
            itemCount: quoteModel!.quoteModel_List.length,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(
                  quoteModel!.quoteModel_List[index].quote!,
                ),
                subtitle: Text(
                  quoteModel!.quoteModel_List[index].author!,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  void updateSelection(Set<String> newselection) {
    setState(() {
      _selected = newselection;
    });
  }
}
// SegmentedButton(
//   multiSelectionEnabled: false,
//   segments: [
//     ButtonSegment<String>(
//         value: 'ListView',
//         label: Text(
//           'ListView',
//           style: TextStyle(fontSize: 20),
//         ),
//         icon: const Icon(Icons.list_alt)),
//     ButtonSegment<String>(
//       value: 'GridView',
//       label: Text('GridView', style: TextStyle(fontSize: 20)),
//       icon: const Icon(Icons.apps_rounded),
//     ),
//   ],
//   selected: _selected,
//   onSelectionChanged: (Set<String> newselection) {
//     setState(() {
//       _selected = newselection;
//       changeToggle = !changeToggle;
//     });
//   },
// ),
// list view Builder
// grid view Builder

/*
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('List & Grid App'),
        actions: [
          IconButton.outlined(onPressed: () {
            setState(() {

              isGrid = !isGrid;

            });
          }, icon: Icon(Icons.grid_3x3))
        ],
      ),
      body: (isGrid)?GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: l1.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(color: Colors.amber),
          alignment: Alignment.center,
          child: Text(l1[index].toString(),style: TextStyle(fontSize: 25),),
        ),
      ):ListView.builder(
        itemCount: l1.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(color: Colors.amber),
          alignment: Alignment.center,
          child: Text(l1[index].toString(),style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}

// Single -> Column -> List.generate -> Widget

// ListView
// GridView
// ToggleView ;

bool isGrid = false;
List l1 = List.generate(100, (index) => index+1);*/
