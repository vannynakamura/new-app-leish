import 'dart:ui';

import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: const Center(
        child: Text(
          '25 Jan, 2021',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
