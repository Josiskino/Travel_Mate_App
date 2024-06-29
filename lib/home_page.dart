import 'package:flutter/material.dart';
import 'package:myapp/categories_section.dart';
import 'package:myapp/places_section.dart';
import 'package:myapp/trip_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        //title: ,
      ),
      backgroundColor: const Color(0xFF1F1F1F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //color: Colors.blue,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 10),
                    height: 50,
                    width: 288,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(81, 88, 107, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color.fromRGBO(230, 238, 249, 1),
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Color.fromRGBO(230, 238, 249, 1),
                            fontSize: 25,
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    //color: Colors.amber,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(12, 177, 241, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic_outlined,
                        color: Color.fromRGBO(230, 238, 249, 1),
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              //color: Colors.amber,
              height: 110,
              child:  CategoriesSection(),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              //color: Colors.red,
              height: 210,
              child: PlacesSection(),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              //color: Colors.indigo,
              height: 420,
              child: TripSection(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF1F1F1F),
      selectedItemColor: const Color(0xFF0CB1F1),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      unselectedItemColor: const Color(0xFFE6EEF9),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home_rounded,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Business',
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            size: 30,
          ),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
    );
  }
}
