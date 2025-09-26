// ignore_for_file: file_names

import 'package:event_calendar/EventManager/CalendarColor.dart';

class EventManager implements IEventManager {
  
  @override
  bool hasEvent(DateTime day) {
    return true;
  }
}

abstract class IEventManager {
  /// Returns true if there exists one or more events on the given day. False otherwise
  hasEvent(DateTime day);
}

class Record {
  const Record({required this.timestamp, required this.color});

  final DateTime timestamp;
  final CalendarColor color;
}
