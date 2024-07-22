// Implementation
class BaseTask {
  DateTime start;
  DateTime end;

  BaseTask(this.start, this.end);
}

// Representation layer
mixin DailyVisualizable {
  double get hourStart;
  double get hourEnd;

  double get duration => hourEnd - hourStart;
}

class Task extends BaseTask with DailyVisualizable {
  @override
  double get hourStart => 0;

  @override
  double get hourEnd => 0;

  Task(DateTime start, DateTime end)
      : super(start, end);
}