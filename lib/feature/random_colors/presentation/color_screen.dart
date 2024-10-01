import 'dart:math';

import 'package:colors_flutter/feature/last_colors/presentation/store/last_colors_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Color Screen this screen changes the text 'Hello World!' Random
class ColorScreen extends StatefulWidget {
  ///Constructor Color Screen
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color? randomColor;
  late final LastColorsBloc _lastColorsBloc;
  @override
  void initState() {
    _lastColorsBloc = context.read<LastColorsBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: updateColor,
      child: Center(
        child: Text(
          'Hello There!!!!',
          style: TextStyle(color: randomColor, fontSize: 32),
        ),
      ),
    );
  }

  void updateColor() {
    setState(() => randomColor = getRandomColor());
    if (randomColor != null) {
      _lastColorsBloc.addNewColor(randomColor!);
    }
  }

  Color getRandomColor() {
    final int r = getRandomRGBValue();
    final int g = getRandomRGBValue();
    final int b = getRandomRGBValue();

    return Color.fromRGBO(r, g, b, 1);
  }

  int getRandomRGBValue() {
    return Random().nextInt(255);
  }
}
