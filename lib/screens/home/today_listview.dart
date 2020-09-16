import 'package:todo_list_app/models/Tasks.dart';
import 'package:flutter/material.dart';

import 'components/constants.dart';

class TodayListView extends StatefulWidget {
  @override
  _TodayListViewState createState() => _TodayListViewState();
}

class _TodayListViewState extends State<TodayListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: (tasks.length * 50.0),
      child: ListView.builder(
        primary: false,
        itemExtent: 50,
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return _ListRowBuilder(index);
        },
      ),
    );
  }

  Widget _ListRowBuilder(index) {
    final double _iconSize = 30;
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: tasks[index].checked
                ? Icon(
                    Icons.check_circle,
                    color: kButtonColor,
                    size: _iconSize,
                  )
                : Icon(
                    Icons.check_circle,
                    color: Colors.grey[200],
                    size: _iconSize,
                  ),
            onTap: () => {
              setState(() {
                tasks[index].checked
                    ? tasks[index].checked = false
                    : tasks[index].checked = true;
              })
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: tasks[index].checked
                      ? Text(tasks[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1.5))
                      : Text(
                          tasks[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                ),
                Text(
                  "Date limite : " +
                      tasks[index].deadline.day.toString() +
                      "/" +
                      tasks[index].deadline.month.toString() +
                      "/" +
                      tasks[index].deadline.year.toString(),
                  style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
