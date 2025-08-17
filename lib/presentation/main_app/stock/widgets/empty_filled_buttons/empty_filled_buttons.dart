import 'package:flutter/material.dart';

class EmptyFilledButtons extends StatelessWidget {
  EmptyFilledButtons({super.key});

  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndex,
      builder: (context, value, child) {
        return Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => selectedIndex.value = 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: value == 0 ? const Color(0xFF1A237E) : Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Empty',
                        style: TextStyle(
                          color: value == 0 ? Colors.white : Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 16,
                        color: value == 0 ? Colors.white : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: GestureDetector(
                onTap: () => selectedIndex.value = 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: value == 1 ? const Color(0xFF1A237E) : Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filled',
                        style: TextStyle(
                          color: value == 1 ? Colors.white : Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 16,
                        color: value == 1 ? Colors.white : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
