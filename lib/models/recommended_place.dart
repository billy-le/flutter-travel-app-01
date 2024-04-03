// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlace {
  String city;
  String country;
  String image;
  String rating;

  RecommendedPlace({
    required this.city,
    required this.country,
    required this.image,
    required this.rating,
  });
}

List<RecommendedPlace> recommendedPlaces = [
  RecommendedPlace(
      city: "Sydney",
      country: "Australia",
      image: "assets/sydney.jpg",
      rating: "4.5"),
  RecommendedPlace(
      city: "Rome", country: "Italy", image: "assets/rome.jpg", rating: "4.9"),
  RecommendedPlace(
      city: "Cairo",
      country: "Egypt",
      image: "assets/egypt.jpg",
      rating: "4.7"),
  RecommendedPlace(
      city: "Delhi",
      country: "India",
      image: "assets/delhi.jpg",
      rating: "4.3"),
  RecommendedPlace(
      city: "New York City",
      country: "United States",
      image: "assets/new-york-city.jpg",
      rating: "3.9"),
  RecommendedPlace(
      city: "Bali",
      country: "Indonesia",
      image: "assets/bali.jpg",
      rating: "4.2"),
];
