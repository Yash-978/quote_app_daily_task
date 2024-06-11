import 'package:flutter/material.dart';

import 'Invoice.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 7),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/pdf');
              },
              child: Icon(Icons.picture_as_pdf_outlined)),
        )],
        title: Text(
          'Invoice Generator',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Customer',style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
                Text('${invoiceDetails[SelectedIndex]['name']}',style: TextStyle(color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,),),
              ],
            ),
            Divider(thickness: 1.5,),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Invoice Items',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const ListTile(
              title: Text('Technical Engagement',style: TextStyle(fontSize: 16),),
              trailing: Text('Rs. 120.0/-',style: TextStyle(fontSize: 14),),
            ),
            const ListTile(
              title: Text('Deployment Assistant',style: TextStyle(fontSize: 16),),
              trailing: Text('Rs. 200.0/-',style: TextStyle(fontSize: 14),),
            ),
            const ListTile(
              title: Text('Develop Software Solution',style: TextStyle(fontSize: 16),),
              trailing: Text('Rs. 3020/-',style: TextStyle(fontSize: 14),),
            ),
            const ListTile(
              title: Text('Produce Documentation',style: TextStyle(fontSize: 16),),
              trailing: Text('Rs. 840/-',style: TextStyle(fontSize: 14),),
            ),
            const ListTile(
              title: Text('Application',style: TextStyle(fontSize: 16),),
              trailing: Text('Rs. 25820/-',style: TextStyle(fontSize: 14),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${invoiceDetails[SelectedIndex]['Price']}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
