import 'package:flutter/material.dart';

class DemandCloseButton extends StatelessWidget {
  final VoidCallback? onClose;
  const DemandCloseButton({super.key, this.onClose});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -4,
      right: -4,
      child: GestureDetector(
        onTap: onClose,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          padding: const EdgeInsets.all(4),
          child: const Icon(
            Icons.close,
            color: Colors.white,
            size: 14,
          ),
        ),
      ),
    );
  }
}
