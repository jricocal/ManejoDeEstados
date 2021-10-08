import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ChangeEvent {}

class ChangeColor extends ChangeEvent {}

// one single event and the state is a boolean variable
class ColorBloc extends Bloc<ChangeEvent, bool> {
  ColorBloc() : super(false) // default value of the state
  {
    on<ChangeColor>((event, emit) {
      emit(!state);
    });
  }
}
