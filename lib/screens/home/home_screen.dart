import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/home/today_listview.dart';
import 'package:todo_list_app/screens/home/today_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Expanded(
                child: Text(
                  "All tasks",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                    size: 32,
                  ),
                  onPressed: null)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TodayTitle(),
              TodayListView(),
            ],
          ),
        ),
      ),
    );
  }
}


