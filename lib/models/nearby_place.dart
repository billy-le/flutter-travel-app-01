// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyPlace {
  String name;
  String description;
  String image;
  double distance;
  double rating;
  double price;

  NearbyPlace({
    required this.name,
    required this.description,
    required this.image,
    required this.distance,
    required this.rating,
    required this.price,
  });
}

List<NearbyPlace> nearbyPlaces = [
  NearbyPlace(
    name: "Statue of Liberty",
    description: 'A colossal neoclassical sculpture on Liberty Island.',
    image: 'assets/statue_of_liberty.jpg',
    distance: 0.4,
    rating: 4.8,
    price: 75.99,
  ),
  NearbyPlace(
    name: "Flat Iron Building",
    description: '',
    image: 'assets/flat_iron_building.jpg',
    distance: 1.7,
    rating: 4.2,
    price: 15.00,
  ),
  NearbyPlace(
    name: "Grand Central Park",
    description: '',
    image: 'assets/grand_central_park.jpg',
    distance: 5.5,
    rating: 4.9,
    price: 5,
  ),
  NearbyPlace(
    name: "The Vessel",
    description: '',
    image: 'assets/the_vessel.jpg',
    distance: 12.5,
    rating: 4.1,
    price: 30,
  ),
  NearbyPlace(
    name: "Times Square",
    description: '',
    image: 'assets/times_square.jpg',
    distance: 12.8,
    rating: 3.8,
    price: 10,
  ),
];
