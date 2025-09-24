import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  
  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  /// opens the settings window
  void openSettings() {
    // TODO. Doesn't work
    setState(() => showDialog(context: context, builder: (context) => Text("popup")));
  }

  /// shows a popup, prompting the user to export their data (Y/N)
  void showExportWindow() {
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    // Layout:
    // Top bar with burger
    //   burger:
    //     Settings
    //     Export data
    //     Import data
    // Calendar
    // Event buttons
    // 
    return Scaffold(
      appBar: AppBar(
        title: MenuItemButton(child: Row(children: 
        [
          TextButton(onPressed: openSettings, child: Text("Settings")),
          TextButton(onPressed: showExportWindow, child: Text("Export data")),
          //TextButton(onPressed: openSettings, child: Text("Import data")),
        ],)),
      ),
    );
  }
  
}