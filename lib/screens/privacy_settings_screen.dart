import 'package:flutter/material.dart';

class PrivacySettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Privacy'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Who can see my personal info',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('Last seen and online'),
            subtitle: Text('Everyone'),
            onTap: () {
              // Navigate to selection screen
            },
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            title: Text('Profile photo'),
            subtitle: Text('Everyone'),
            onTap: () {
              // Navigate to selection screen
            },
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            title: Text('About'),
            subtitle: Text('Everyone'),
            onTap: () {
              // Navigate to selection screen
            },
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          SwitchListTile(
            title: Text('Read receipts'),
            subtitle: Text(
              "If turned off, you won't send or receive Read receipts. Read receipts are always sent for group chats.",
              style: TextStyle(fontSize: 12),
            ),
            value: true, // Default value for the switch
            onChanged: (bool value) {
              // Handle switch toggle
            },
            activeColor: Colors.teal,
          ),
          ListTile(
            title: Text('Disappearing messages'),
            subtitle: Text('Default message timer'),
            onTap: () {
              // Navigate to selection screen
            },
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            title: Text(''),
            subtitle: Text('Off'),
            onTap: () {
              // Navigate to selection screen
            },
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}
