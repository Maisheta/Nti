import 'package:flutter/material.dart';

class SubscriptionPlans extends StatefulWidget {
  @override
  _SubscriptionPlansState createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  String selectedPlan = 'Yearly'; // الخيار المُحدد افتراضيًا

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubscriptionPlan(
          plan: 'Yearly',
          price: '€94.80',
          duration: '',
          discount: '-68% discount',
          isSelected: selectedPlan == 'Yearly',
          onSelect: (value) {
            setState(() {
              selectedPlan = value;
            });
          },
        ),
        SubscriptionPlan(
          plan: 'Monthly',
          price: '€10.90',
          duration: 'every month',
          discount: '-53% discount',
          isSelected: selectedPlan == 'Monthly',
          onSelect: (value) {
            setState(() {
              selectedPlan = value;
            });
          },
        ),
        SubscriptionPlan(
          plan: 'Weekly',
          price: '€5.90',
          duration: 'every week',
          discount: '',
          isSelected: selectedPlan == 'Weekly',
          onSelect: (value) {
            setState(() {
              selectedPlan = value;
            });
          },
        ),
      ],
    );
  }
}

class SubscriptionPlan extends StatelessWidget {
  final String plan;
  final String price;
  final String duration;
  final String discount;
  final bool isSelected;
  final Function(String) onSelect;

  SubscriptionPlan({
    required this.plan,
    required this.price,
    required this.duration,
    required this.discount,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue[50] : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: isSelected ? Colors.blue : Colors.grey[300]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Radio(
                value: plan,
                groupValue: isSelected ? plan : null,
                onChanged: (value) {
                  onSelect(plan);
                },
                activeColor: Colors.blue,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plan,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  if (discount.isNotEmpty)
                    Text(
                      discount,
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                ],
              ),
            ],
          ),
          Text(
            '$price $duration',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
