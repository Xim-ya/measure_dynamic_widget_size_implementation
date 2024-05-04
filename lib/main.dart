import 'package:flutter/material.dart';
import 'package:measure_size_implementation/src/cast_info_page.dart';
import 'package:measure_size_implementation/src/widget/responsive_layout_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeasureSizeBuilder Implementation',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: ResponsiveLayoutBuilder(
        context,
        const CastInfoPage(),
      ),
    );
  }
}
