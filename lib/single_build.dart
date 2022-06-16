import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/component.dart';
import 'package:riverpod_sample/state.dart';


class SingleBuildScreen extends ConsumerWidget {
  const SingleBuildScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateHolder = ref.read(stateHolderProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) {
                final count1 = ref.watch(
                  stateHolderProvider.select((value) => value.count1),
                );
                return CountWidget(
                  tag: "Count1",
                  count: count1,
                  onClick: stateHolder.increment1,
                );
              },
            ),
            Consumer(
              builder: (context, ref, child) {
                final count2 = ref.watch(
                  stateHolderProvider.select((value) => value.count2),
                );
                return CountWidget(
                  tag: "Count2",
                  count: count2,
                  onClick: stateHolder.increment1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
