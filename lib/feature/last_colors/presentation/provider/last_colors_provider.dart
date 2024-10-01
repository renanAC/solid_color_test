import 'package:colors_flutter/feature/last_colors/presentation/store/last_colors_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Provider last colors widget
/// We should use it to get and set new colors
class LastColorsProvider extends StatelessWidget {
  /// Inject the Last Colors Provider by using this constuctor
  const LastColorsProvider({required this.child, super.key});

  ///Child element of the provider
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LastColorsBloc>(
          create: (context) => LastColorsBloc(),
        ),
      ],
      child: child,
    );
  }
}
