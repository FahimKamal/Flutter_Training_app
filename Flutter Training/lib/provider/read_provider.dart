import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tt/provider/counter.dart';

class ReadProvider extends StatefulWidget {
  const ReadProvider({Key? key}) : super(key: key);

  @override
  _ReadProviderState createState() => _ReadProviderState();
}

class _ReadProviderState extends State<ReadProvider> {
  @override
  Widget build(BuildContext context) {

    final CounterProvider countProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(countProvider.count.toString(), style: TextStyle(fontSize: 50),),
            ElevatedButton(
              onPressed: countProvider.increment,
              child: Text("Increment")
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){countProvider.decrement();},
                child: Text("Decrement")
            ),
          ],
        ),
      ),
    );
  }
}
