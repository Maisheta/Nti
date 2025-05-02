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
      initialRoute: '/order_confirmation',
      routes: {
        '/order_confirmation': (context) => OrderConfirmationScreen(),
        '/privacy_settings': (context) => PrivacySettingsScreen(),
        '/basket': (context) => BasketScreen(),
        '/subscription_plans': (context) => SubscriptionPlansScreen(),
        '/contact_info': (context) => ContactInfoScreen(),
      },
    );
  }
}

// شاشة Order Confirmation
class OrderConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Confirmation')),
      body: OrderConfirmationScreen(),
    );
  }
}

// شاشة Privacy Settings
class PrivacySettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Privacy Settings')),
      body: PrivacySettingsScreen(),
    );
  }
}

// شاشة Basket
class BasketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Basket')), body: BasketItem());
  }
}

// شاشة Subscription Plans
class SubscriptionPlansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Subscription Plans')),
      body: SubscriptionPlans(),
    );
  }
}
