import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const randomDice());
}

class randomDice extends StatelessWidget {
  const randomDice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("dice machine"),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.black,
      body: Slot(),
    ));
  }
}

class Slot extends StatefulWidget {
  Slot({super.key});

  @override
  State<Slot> createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  var slotnumber1 = Random().nextInt(5) + 1;

  void setSlotNumber() {
    setState(() {
      slotnumber1 = Random().nextInt(5) + 1;
    });
  }

  Expanded createExpanded(int slotnumber) {
    return Expanded(
      child: TextButton(
          onPressed: setSlotNumber,
          child: Image.asset('images/$slotnumber.png')),
    );
  }

  int getNumber() {
    return Random().nextInt(10);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(children: [
        createExpanded(slotnumber1),
      ]),
    );
  }
}
