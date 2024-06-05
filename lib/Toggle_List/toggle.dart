import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/QuoteApp/QuotesHomeScreen.dart';

class ToggleList extends StatefulWidget {
  const ToggleList({super.key});

  @override
  State<ToggleList> createState() => _ToggleListState();
}

bool changeToggle = false;

// IconData selected = IconData(Icons.menu)
Set <String>_selected = {'ListView'};

class _ToggleListState extends State<ToggleList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Toggle'),
        actions: [
          SegmentedButton(multiSelectionEnabled: false,
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
                label: Text('GridView',
                    style: TextStyle(fontSize: 20)),
                icon: const Icon(Icons.apps_rounded),
              ),
            ], selected: _selected,
            onSelectionChanged: (Set<String> newselection) {
              setState(() {
                _selected = newselection;
                changeToggle = !changeToggle;
              });
            },
          ),
          (changeToggle) ?
          ListView.builder(itemCount: quoteModel!.quoteModel_List.length,
            itemBuilder: (BuildContext context, int index) {

            },


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
