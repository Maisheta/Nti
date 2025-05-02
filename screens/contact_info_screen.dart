import 'package:flutter/material.dart';

class ContactInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel', style: TextStyle(color: Colors.blue)),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Done', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 202 555 0181'),
            subtitle: Text('home'),
          ),
          ListTile(leading: Icon(Icons.phone), title: Text('+1 202 555 0113')),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'bio',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Design adds value faster, then it adds cost',
              style: TextStyle(fontSize: 14),
            ),
          ),
          ListTile(
            title: Text('Notifications'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Enabled'),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Delete Contact', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
