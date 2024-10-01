import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///State management of the list of last colors
class LastColorsBloc extends Cubit<List<Color>> {
  /// Constructor set state as empty array
  LastColorsBloc() : super([]);
  final List<Color> _colors = [];

  /// Add new color every time that some color is change
  /// we should call this
  void addNewColor(Color color) {
    _colors.add(color);
    emit([..._colors]);
  }
}
