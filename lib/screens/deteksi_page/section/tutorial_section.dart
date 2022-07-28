import 'package:flutter/material.dart';

class DeteksiTutorialSection extends StatelessWidget {
  final int step;
  final String description;
  final VoidCallback onClick;

  const DeteksiTutorialSection({
    Key? key,
    required this.step,
    required this.description,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Step ${step.toString()}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onClick,
            child: const Text('Ambil'),
          ),
        ],
      ),
    );
  }
}
