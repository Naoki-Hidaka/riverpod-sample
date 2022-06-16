import 'package:flutter_riverpod/flutter_riverpod.dart';

class State {
  int count1;
  int count2;

  State(this.count1, this.count2);
}

final stateHolderProvider = StateNotifierProvider<StateHolder, State>(
  (ref) => StateHolder(State(0, 0)),
);

class StateHolder extends StateNotifier<State> {
  StateHolder(State state) : super(state);

  void increment1() {
    state = State(state.count1 + 1, state.count2);
  }

  void increment2() {
    state = State(state.count1, state.count2 + 1);
  }
}
