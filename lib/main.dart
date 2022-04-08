import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/state_notifier.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'river pod test'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer(builder: (context, ref, child) {
              final _count = ref.watch(countProvider);
              return Text(
                '$_count',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Column(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final _freeText = ref.watch(freeTextProvider);

                    return TextFormField(
                      controller: _freeText,
                      enabled: true,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      obscureText: false,
                      maxLines: 1,
                      onFieldSubmitted: (String? value) {
                        // ref
                        //     .read(inputTextProvider.notifier)
                        //     .updateDisplayText(_freeText.text);
                      },
                    );
                  },
                ),
                // Consumer(
                //   builder: (context, ref, child) {
                //     final _displayText = ref.watch(inputTextProvider);
                //     return Text(
                //       "input : $_displayText",
                //       style: Theme.of(context).textTheme.headline4,
                //     );
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(countProvider.notifier).increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
