import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.orange,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                Spacer(),
                Text(
                  '9:41',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(width: 16),
                Icon(Icons.signal_wifi_4_bar, color: Colors.white, size: 16),
                SizedBox(width: 4),
                Icon(Icons.battery_full, color: Colors.white, size: 16),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.green[50],
                    child: Icon(Icons.check, color: Colors.green, size: 60),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Congratulations!!!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Your order have been taken and\nis being attended to',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Track order',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      side: BorderSide(color: Colors.orange),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Continue shopping',
                      style: TextStyle(fontSize: 16, color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
