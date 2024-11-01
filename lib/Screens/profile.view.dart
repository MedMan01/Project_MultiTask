import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.person,
        size: 200,
        color: Colors.grey,
      ),
    );
  }
}
