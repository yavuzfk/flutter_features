import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(ExampleState(""));

  changeText(String value) {
    emit(state.copyWith(text: value));
  }
}

class ExampleState extends Equatable {
  final String text;

  const ExampleState(this.text);

  ExampleState copyWith({String? text}) {
    return ExampleState(text ?? this.text);
  }

  @override
  List<Object> get props => [text];
}
