import 'package:flutter/material.dart';

class SearchParcel extends StatefulWidget {
  const SearchParcel({super.key});
  @override
  State<SearchParcel> createState() => _SearchParcelState();
}

class _SearchParcelState extends State<SearchParcel> {
  @override
  Widget build(BuildContext context) {
    // ... other widget code

    return const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("(Search Parcel) Coming soon")),
        ));
  }
}
