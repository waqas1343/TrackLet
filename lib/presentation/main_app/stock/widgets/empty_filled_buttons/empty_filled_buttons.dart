import 'package:flutter/material.dart';

class EmptyFilledButtons extends StatelessWidget {
  const EmptyFilledButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Empty', style: TextStyle(color: Colors.black)),
                Icon(Icons.calendar_today_rounded, size: 16, color: Colors.grey),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF1A237E),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Filled', style: TextStyle(color: Colors.white)),
                Icon(Icons.calendar_today_rounded, size: 16, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
