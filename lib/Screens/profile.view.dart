import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage("images/img.png"),
        ),
        SizedBox(height: 40),
        Text(
          "Mohammed Manouni",
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "mhd@gmail.com",
          style: TextStyle(fontSize: 28),
        ),
        SizedBox(height: 50),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.indigo,
                backgroundColor: Colors.amber,
                elevation: 20,
                fixedSize: Size(400, 25)),
            onPressed: () {},
            child: Text("Modifier le profile"))
      ],
    ));
  }
}
