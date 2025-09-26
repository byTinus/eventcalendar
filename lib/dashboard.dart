import 'package:event_calendar/EventManager/EventManager.dart';
import 'package:event_calendar/buttonswidget.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  
  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // Layout:
    // Top bar with burger
    //   burger:
    //     Settings
    //     Export data
    //     Import data
    // Calendar
    // Event buttons
    // 
    return Scaffold(
      appBar: AppBar(
        title: MenuItemButton(child: Row(children: 
        [
          TextButton(onPressed: ()=>{}, child: Text("Settings")),
          TextButton(onPressed: () => {}, child: Text("Export data")),
          //TextButton(onPressed: openSettings, child: Text("Import data")),
        ],)),
      ),
      body: Column(children: 
      [
        TableCalendar(
          key: Key("calendar"),
          focusedDay: DateTime.now(),
          firstDay: DateTime(DateTime.now().year - 5), // TODO: Set based on earliest record.
          lastDay: DateTime(DateTime.now().year + 1),
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // update `_focusedDay` here as well
            });
          },
          calendarFormat: CalendarFormat.month,

        ),
        ButtonsWidget(key: Key("buttonswidget"), eventManager: EventManager()),
      ],
      ),
    );
  }
}