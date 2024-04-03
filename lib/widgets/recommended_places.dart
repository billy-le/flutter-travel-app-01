import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_01/models/recommended_place.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final recommendedPlace = recommendedPlaces[index];

          return SizedBox(
              width: 256,
              child: Card(
                elevation: 0.4,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          recommendedPlace.image,
                          height: 150,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(recommendedPlace.city,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  size: 20, color: Colors.amberAccent.shade200),
                              Text(
                                recommendedPlace.rating,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Text(
                            recommendedPlace.country,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: recommendedPlaces.length,
      ),
    );
  }
}
