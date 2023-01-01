import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  final String title = 'Settings';
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> with AutomaticKeepAliveClientMixin  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(
            titlePadding: EdgeInsets.all(15),
            title: 'General',
            tiles: [
              SettingsTile(
                  title: 'Test',
              ),
              SettingsTile(
                  title: 'Test2',
                  subtitle: 'Example subtext',
              ),
              SettingsTile.switchTile(
                title: 'Dark Mode',
                onToggle: (bool value) {  },
                switchValue: true,
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
