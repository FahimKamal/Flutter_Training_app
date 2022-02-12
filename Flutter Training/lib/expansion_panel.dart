import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatefulWidget {
  const ExpansionPanelExample({Key? key}) : super(key: key);

  @override
  _ExpansionPanelExampleState createState() => _ExpansionPanelExampleState();
}

class _ExpansionPanelExampleState extends State<ExpansionPanelExample> {
  static const loremIpsum =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  final List<Item> items = [
    Item(header: 'Panel 1', body: loremIpsum),
    Item(header: 'Panel 2', body: loremIpsum),
    Item(header: 'Panel 3', body: loremIpsum),
    Item(header: 'Panel 4', body: loremIpsum),
    Item(header: 'Panel 5', body: loremIpsum),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Panel"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionPanelList.radio(
              children: items
                  .map((item) => ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: item.header!,
                        headerBuilder:
                            (BuildContext context, bool isExpanded) => ListTile(
                          title: Text(item.header!),
                        ),
                        body: Text(item.body!),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 20),
            ExpansionTile(
              title: Text("Animals"),
              children: [
                ListTile(title: Text('Dog')),
                ListTile(title: Text('Cat')),
                ListTile(title: Text('Fish')),
                ListTile(title: Text('Bird')),
              ],
            ),
            ListTile(title: Text('Test')),
          ],
        ),
      ),
    );
  }
}

class Item {
  String? header, body;

  Item({this.header, this.body});
}
