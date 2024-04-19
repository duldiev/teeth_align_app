part of 'create_event_bloc.dart';

@freezed
class CreateEventEvent with _$CreateEventEvent {
  const factory CreateEventEvent.setInitial(Meeting? event) = SetInitial;

  const factory CreateEventEvent.changeName(String name) = ChangeName;

  const factory CreateEventEvent.changeDescription(
    String description,
  ) = ChangeDescription;

  const factory CreateEventEvent.changeColor(Color color) = ChangeColor;

  const factory CreateEventEvent.changeFromDate(DateTime from) = ChangeFromDate;

  const factory CreateEventEvent.changeToDate(DateTime to) = ChangeToDate;

  const factory CreateEventEvent.createEvent() = CreateEvent;

  const factory CreateEventEvent.editEvent() = EditEvent;

  const factory CreateEventEvent.deleteEvent(int? id) = DeleteEvent;

  const factory CreateEventEvent.isEdit(bool isEdit) = IsEdit;
}
