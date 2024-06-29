import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
   CategoriesSection({super.key});

  final categories = [
    {
      "name": "Hotels",
      "icon": Icons.hotel,
    },
    {
      "name": "Restaurants",
      "icon": Icons.restaurant,
    },
    {
      "name": "Flights",
      "icon": Icons.flight,
    },
    {
      "name": "Flights",
      "icon": Icons.flight,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 10,),
        SizedBox(
          height: 85,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              children: [
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: const Color.fromRGBO(81, 88, 107, 1),
                  ),
                  child: Icon(
                    categories[index]['icon'] as IconData,
                    color: const Color.fromRGBO(230, 238, 249, 1),
                    size: 40,
                  ),
                ),
                const SizedBox(height: 10,),
               /* Text(
                  categories[index]['name'] as String,
                  style: const TextStyle(
                    color: Color.fromRGBO(230, 238, 249, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),*/
              ],
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 33,),
            itemCount: categories.length,
          ),
        ),
      ],
    );
  }
}