import 'package:flutter/material.dart';
import 'package:ble_test_app/widgets.dart';
import 'package:provider/provider.dart';

// global providers
class ProviderConsumer extends StatelessWidget {
  const ProviderConsumer({
    Key? key,
    required this.builder,
  }) : super(key: key);
  final Widget Function(
    BuildContext context,
    BLEProvider bLEProvider,
  ) builder;

  @override
  Widget build(BuildContext context) {
    return Consumer<BLEProvider>(
      builder: (_, bLEProvider, __) {
        return builder(context, bLEProvider);
      },
    );
  }
}
