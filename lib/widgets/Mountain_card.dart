import 'package:flutter/material.dart';

class MountainCard extends StatelessWidget {
  final String name;
  final int height;

  const MountainCard({
    super.key,
    required this.name,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
          color: Colors.deepOrange),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      height.toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const Text('m'),
                    const Icon(Icons.terrain_rounded),
                  ],
                ),
              ],
            ),
            const Icon(Icons.location_on, size: 64),
          ],
        ),
      ),
    );
  }
}
