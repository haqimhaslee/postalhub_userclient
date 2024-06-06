import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});
  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    // ... other widget code

    return const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("(Profile/Settings) Coming soon")),
        ));
  }
}
