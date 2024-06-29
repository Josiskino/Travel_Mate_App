import 'package:flutter/material.dart';
import 'package:myapp/entities/tourist_site.dart';

class PlacesSection extends StatelessWidget {
  PlacesSection({super.key});

  final List<TouristSite> touristSites = TouristSite.touristSites();
  //final int itemCount = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hot Places',
              style: TextStyle(
                color: Color.fromRGBO(230, 238, 249, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                color: Color.fromRGBO(81, 88, 107, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                //color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  touristSites[index].bgImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemCount: touristSites.length,
          ),
        ),
      ],
    );
  }
}
