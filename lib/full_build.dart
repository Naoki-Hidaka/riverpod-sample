import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/component.dart';
import 'package:riverpod_sample/state.dart';

class FullBuildScreen extends ConsumerWidget {
  const FullBuildScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateHolderProvider);
    final stateHolder = ref.read(stateHolderProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountWidget(
              tag: "Count1",
              count: state.count1,
              onClick: stateHolder.increment1,
            ),
            CountWidget(
              tag: "Count2",
              count: state.count2,
              onClick: stateHolder.increment2,
            ),
          ],
        ),
      ),
    );
  }
}
