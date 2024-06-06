import 'package:flutter/material.dart';

class MyParcel extends StatefulWidget {
  const MyParcel({super.key});
  @override
  State<MyParcel> createState() => _MyParcelState();
}

class _MyParcelState extends State<MyParcel> {
  @override
  Widget build(BuildContext context) {
    // ... other widget code

    return const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("(My Parcel) Coming soon")),
        ));
  }
}
