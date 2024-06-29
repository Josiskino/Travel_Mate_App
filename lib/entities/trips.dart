class Trips {
  String name;
  String localisation;
  String date;
  String bgImage;

  Trips({
    required this.name,
    required this.localisation,
    required this.date,
    required this.bgImage,
  });

  static List<Trips> trips() {
    return [
      Trips(
        name: 'Slave House ',
        localisation: 'localisation1',
        date: 'date1',
        bgImage: 'assets/images/places/place13.jpeg',
      ),
      Trips(
        name: 'Vial castle trip',
        localisation: 'localisation2',
        date: 'date2',
        bgImage: 'assets/images/places/place2.jpeg',
      ),
      Trips(
        name: 'Temberma temple',
        localisation: 'localisation2',
        date: 'date2',
        bgImage: 'assets/images/places/place3.jpeg',
      ),
      
    ];
  }

}