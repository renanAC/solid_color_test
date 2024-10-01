import 'package:colors_flutter/feature/last_colors/presentation/store/last_colors_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///  This widget is a Screen with all colors that was showed on the 'Hello There'
///  Should use this widget inside LastColorsProvider
class LastColorsScreen extends StatelessWidget {
  /// LastColorsScreen constructor
  const LastColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LastColorsBloc, List<Color>>(builder: (context, state) {
      return GridView.builder(
        shrinkWrap: true,
        itemCount: state.length,
        itemBuilder: (context, index) {
          return DecoratedBox(
            decoration: BoxDecoration(color: state[index]),
          );
        },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      );
    });
  }
}
