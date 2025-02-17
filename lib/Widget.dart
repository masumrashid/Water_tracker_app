
import 'package:flutter/material.dart';

class AddWater extends StatelessWidget {
  const AddWater({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {},
          label: Text(
            '100ml',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),icon: Icon(Icons.water_drop,color: Colors.white,)),
    );
  }
}