import 'package:flutter/material.dart';
import 'package:ble_test_app/provider_consumer.dart';
import 'package:ble_test_app/ui/home.dart';
import 'package:ble_test_app/provider_scope.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: App());
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderConsumer(builder: ((context, bLEProvider) {
      return MaterialApp(
        title: 'Flutter BLE test app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      );
    }));
  }
}
