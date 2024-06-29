import 'package:flutter/material.dart';
import 'package:myapp/entities/trips.dart';

class TripSection extends StatelessWidget {
   TripSection({super.key});

  final List<Trips> trips = Trips.trips();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, top: 15),
          child: const Text(
            "Up-Coming Trips",
            style: TextStyle(
              color: Color.fromRGBO(230, 238, 249, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
        const SizedBox(height: 15,),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF2F364E),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                      ),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        trips[index].bgImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    
                    children: [
                      Text(
                        trips[index].name,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 193, 195, 201),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ), 
            separatorBuilder: (context, index) => const SizedBox(height: 15), 
            itemCount: trips.length,
            ),
          ),
      ],
    );
  }
}