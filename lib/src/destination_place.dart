class Destination {
  final String title;
  final String imageUrl;

  Destination({
    this.title,
    this.imageUrl,
  });
}

List<Destination> loadDestination() {
  var fi = <Destination>[
    Destination(
      title: "Sweta",
      imageUrl: "assests/sweta.jpg",
    ),
    Destination(
      title: "Sweta",
      imageUrl: "assests/sweta.jpg",
    ),
    Destination(
      title: "Sweta Sitaula",
      imageUrl: "assests/sweta.jpg",
    ),
    Destination(
      title: "Sweta",
      imageUrl: "assests/sweta.jpg",
    ),
    Destination(
      title: "Sweta",
      imageUrl: "assests/sweta.jpg",
    ),
    Destination(
      title: "Sweta",
      imageUrl: "assests/sweta.jpg",
    ),
    Destination(
      title: "Sweta",
      imageUrl: "assests/kanchenjunga.jpg",
    ),
    Destination(
      title: "Lumba Sumba Pass Trek",
      imageUrl: "assests/lumba.jpg",
    ),
    Destination(
      title: "Makalu Base Camp Trek",
      imageUrl: "assests/makalu.jpg",
    ),
  ];
  return fi;
}
