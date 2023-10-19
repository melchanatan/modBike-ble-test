import 'package:flutter/material.dart';
import 'package:ble_test_app/widgets.dart';
import 'package:provider/provider.dart';

// global providers
class ProviderScope extends StatelessWidget {
  const ProviderScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BLEProvider>(
          create: (context) => BLEProvider(),
        ),
      ],
      child: child,
    );
  }
}
