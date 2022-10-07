class Event{
  Event();
  factory Event.none() => Event();

}

class SuccessEvent<T> extends Event{
  final T? data;
  SuccessEvent({this.data});
}

class ErrorEvent extends Event{
  final dynamic error;

  ErrorEvent({this.error});
}