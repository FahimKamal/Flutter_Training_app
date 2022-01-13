import 'package:flutter/material.dart';

class SearchBarClass extends StatefulWidget {
  const SearchBarClass({Key? key}) : super(key: key);

  @override
  _SearchBarClassState createState() => _SearchBarClassState();
}

class _SearchBarClassState extends State<SearchBarClass> {

  List<String> nameList = [
    'Fahim', 'Kamal', 'Ahmed', 'Sakib', 'Sayem', 'Rakib', 'Mim', 'Shanto',
    'Lafia', 'Mostak', 'Siyam', 'Nayan', 'Moksad'
  ];

  List<String>? dataHolder;

  @override
  void initState() {
    dataHolder = List.from(nameList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scarch Bar"), centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              // keyboardType: TextInputType.number,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Scarch Here...',
              ),
              onChanged: (input){
                setState(() {
                  dataHolder=nameList.where((element) => (
                  element.toLowerCase().contains(input.toLowerCase())
                  )).toList();
                });
              },
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                    itemCount: dataHolder!.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: ListTile(
                          title: Text(dataHolder![index]),
                          subtitle: Text(dataHolder![index] + "is a Motamuti Boy."),
                        ),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
