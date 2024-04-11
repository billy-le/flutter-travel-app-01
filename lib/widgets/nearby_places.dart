import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_01/models/nearby_place.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
        final nearbyPlace = nearbyPlaces[index];

        return SizedBox(
          height: 150,
          width: double.maxFinite,
          child: Card(
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              splashColor: Colors.grey.shade200,
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        nearbyPlace.image,
                        height: double.maxFinite,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(nearbyPlace.name,
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                              Text(
                                '${nearbyPlace.distance.toString()} km',
                                style:
                                    const TextStyle(color: Colors.blueAccent),
                              ),
                            ],
                          ),
                          Text(nearbyPlace.description,
                              style: Theme.of(context).textTheme.bodyMedium),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(Icons.star,
                                  size: 16, color: Colors.amber),
                              Text(nearbyPlace.rating.toString()),
                              const Spacer(),
                              RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Theme.of(context).primaryColor),
                                    text: "\$${nearbyPlace.price.toString()} ",
                                    children: [
                                      TextSpan(
                                          text: '/ person',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary))
                                    ]),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
