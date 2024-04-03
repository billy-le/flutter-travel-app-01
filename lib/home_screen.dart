import 'package:flutter/material.dart';
import 'package:travel_app_01/widgets/location_card.dart';
import 'package:travel_app_01/widgets/recommended_places.dart';
import 'package:travel_app_01/widgets/tourist_places.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Good Morning,"),
            Text(
              "Aristotle",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        actions: [
          IconButton.outlined(
            onPressed: () {},
            color: Colors.black54,
            icon: const Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton.outlined(
              onPressed: () {},
              color: Colors.black54,
              icon: const Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Cards
              const LocationCard(),
              const SizedBox(
                height: 16,
              ),
              const TouristPlaces(),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommendation",
                      style: Theme.of(context).textTheme.headlineSmall),
                  TextButton(onPressed: () {}, child: const Text("View All"))
                ],
              ),
              const RecommendedPlaces(),
              // Categories

              // Recommendations
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmarks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
