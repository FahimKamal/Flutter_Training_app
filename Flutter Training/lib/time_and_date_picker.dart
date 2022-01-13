import 'package:flutter/material.dart';

class DateAndTimePicker extends StatefulWidget {

  String? appBarTitle;
  Color? appBarColor;

  DateAndTimePicker({this.appBarTitle, this.appBarColor});

  // const DateAndTimePicker({Key? key}) : super(key: key);

  @override
  _DateAndTimePickerState createState() => _DateAndTimePickerState();
}

class _DateAndTimePickerState extends State<DateAndTimePicker> {
  DateTime? pickDate;
  TimeOfDay? pickTime;

  @override
  void initState() {
    super.initState();
    pickDate = DateTime.now();
    pickTime = TimeOfDay.now();
  }

  void _pickedTime() async {
    TimeOfDay? time = await showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: pickTime!);

    if (time != null) {
      setState(() {
        pickTime = time;
      });
    }
  }

  void _pickedDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickDate!,
        firstDate: DateTime(DateTime.now().year - 10),
        lastDate: DateTime(DateTime.now().year + 10));

    if (date != null) {
      setState(() {
        pickDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.appBarTitle}'),
        centerTitle: true,
        backgroundColor: widget.appBarColor,
      ),
      body: Column(
        children: [
          Center(
            child: ListTile(
              title: Text(
                'Date: ${pickDate!.day} : ${pickDate!.month} : ${pickDate!.year}',
                style: TextStyle(fontSize: 50),
              ),
              trailing: IconButton(
                  onPressed: _pickedDate,
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    size: 30,
                  )),
            ),
          ),
          Center(
            child: ListTile(
              title: Text(
                'Time: ${pickTime!.format(context)}',
                style: TextStyle(fontSize: 30),
              ),
              trailing: IconButton(
                  onPressed: _pickedTime,
                  icon: Icon(
                    Icons.access_time_outlined,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
