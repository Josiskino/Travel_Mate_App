
class TouristSite {
  String title;
  String rate;
  String localisation;
  String bgImage;
  List<String>? images;

  TouristSite({
    required this.title,
    required this.rate,
    required this.localisation,
    required this.bgImage,
    this.images,
  });

  static List<TouristSite> touristSites() {
    return [
      TouristSite(
        title: 'title1',
        rate: 'rate1',
        localisation: 'localisation1',
        bgImage: 'assets/images/places/place4.jpeg',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title2',
        rate: 'rate2',
        localisation: 'localisation2',
        bgImage: 'assets/images/places/place7.jpeg',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title3',
        rate: 'rate3',
        localisation: 'localisation3',
        bgImage: 'assets/images/places/place9.jpeg',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title4',
        rate: 'rate4',
        localisation: 'localisation4',
        bgImage: 'assets/images/places/place12.jpeg',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title5',
        rate: 'rate5',
        localisation: 'localisation5',
        bgImage: 'assets/images/places/place14.jpeg',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title6',
        rate: 'rate6',
        localisation: 'localisation6',
        bgImage: 'assets/images/places/place3.jpeg',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title7',
        rate: 'rate7',
        localisation: 'localisation7',
        bgImage: 'image7',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title8',
        rate: 'rate8',
        localisation: 'localisation8',
        bgImage: 'image8',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title9',
        rate: 'rate9',
        localisation: 'localisation9',
        bgImage: 'image9',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title10',
        rate: 'rate10',
        localisation: 'localisation10',
        bgImage: 'image10',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title11',
        rate: 'rate11',
        localisation: 'localisation11',
        bgImage: 'image11',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title12',
        rate: 'rate12',
        localisation: 'localisation12',
        bgImage: 'image12',
        images: ['image1', 'image2', 'image3'],
      ),
      TouristSite(
        title: 'title13',
        rate: 'rate13',
        localisation: 'localisation13',
        bgImage: 'image13',
        images: ['image1', 'image2', 'image3'],
      ),
    ];
  }
}


