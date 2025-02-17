import 'package:flutter/material.dart';

class AddWater extends StatelessWidget {
  final int amount;
  IconData? icon;
  final VoidCallback Onclick;
  AddWater({
    super.key,
    required this.amount,
    this.icon,
    required this.Onclick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
            ),
            onPressed: Onclick,
            label: Text(
              '${amount} ml',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            icon: Icon(
              icon ?? Icons.water_drop,
              color: Colors.white,
            )),
      ),
    );
  }
}
