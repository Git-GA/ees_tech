import 'package:ees_tech/controllers/home_page.dart';
import 'package:ees_tech/controllers/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends GetView<MainController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Настройки"),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Общие'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Язык'),
                value: Text('Русский'),
                onPressed: (contex) {},
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Использовать темную тему'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
