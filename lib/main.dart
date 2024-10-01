import 'package:colors_flutter/app.dart';
import 'package:colors_flutter/feature/last_colors/presentation/provider/last_colors_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

/// Main App
class MainApp extends StatelessWidget {
  /// Main App
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LastColorsProvider(
        child: App(),
      ),
    );
  }
}
