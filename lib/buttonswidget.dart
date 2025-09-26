import 'package:event_calendar/EventManager/EventManager.dart';
import 'package:event_calendar/EventManager/CalendarColor.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key, required this.eventManager});
  
  final EventManager eventManager;

  List<Widget> buildButtons() {
    List<Widget> buttons = List.empty(growable: true);
    for (CalendarColor color in CalendarColor.values)
    {
      buttons.add(IconButton(
        icon: Icon(Icons.radio_button_unchecked, color: color.color,), 
        onPressed: ()=> buttonPress(color)
      ));
    }
    return buttons;
  }

  /// Button press event. Key is CalendarColor
  void buttonPress(CalendarColor calendarcolor)
  {
    // Register Event
    //eventManager.recordEvent(calendarcolor);

    // Update button style
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: buildButtons(), );
  }
}