import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/map_pin.png",
            fit: BoxFit.cover,
            height: 100,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                "Your Location",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "New York City, USA",
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}
