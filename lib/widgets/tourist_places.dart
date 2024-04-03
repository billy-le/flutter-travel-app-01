import 'package:flutter/material.dart';
import 'package:travel_app_01/models/tourist_place_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final touristPlace = touristPlaces[index];

          return Chip(
            label: Text(touristPlace.name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlace.image),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: touristPlaces.length,
      ),
    );
  }
}
