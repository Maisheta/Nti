import 'package:flutter/material.dart';
import 'screens/order_confirmation_screen.dart';
import 'screens/privacy_settings_screen.dart';
import 'screens/basket_item.dart';
import 'screens/subscription_plan.dart';
import 'screens/contact_info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), 
      routes: {
        '/order_confirmation': (context) => OrderConfirmationScreen(),
        '/privacy_settings': (context) => PrivacySettingsScreen(),
        '/basket': (context) => ProductScreen(),
        '/subscription_plans': (context) => SubscriptionPlans(),
        '/contact_info': (context) => ContactInfoScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Menu')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed:
                () => Navigator.pushNamed(context, '/order_confirmation'),
            child: Text('Order Confirmation'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/privacy_settings'),
            child: Text('Privacy Settings'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/basket'),
            child: Text('Basket'),
          ),
          ElevatedButton(
            onPressed:
                () => Navigator.pushNamed(context, '/subscription_plans'),
            child: Text('Subscription Plans'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/contact_info'),
            child: Text('Contact Info'),
          ),
        ],
      ),
    );
  }
}
