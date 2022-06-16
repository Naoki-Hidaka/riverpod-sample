import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    required this.tag,
    required this.count,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final String tag;
  final int count;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    print('$tag widget build');
    return Column(
      children: [
        Text(count.toString()),
        TextButton(
          child: const Text("onClick"),
          onPressed: onClick,
        ),
      ],
    );
  }
}