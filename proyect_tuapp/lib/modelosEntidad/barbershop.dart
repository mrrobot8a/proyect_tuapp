class Barbershop {
  final String name;
  final String image;
  final String rating;
  
  Barbershop(
      {this.image, this.name, this.rating});
}

List<Barbershop> bestList = [
  Barbershop(
    name: "Lion Kennedy",
    image: "assets/1.jpg",
    rating: "4.2",
  ),
  Barbershop(
    name: "Oscar Muñoz",
    image: "assets/barbero2.jpg",
    rating: "4.7",
  ),
  Barbershop(
    name: "Jhon Gonzalez",
    image: "assets/barbero3.jpg",
    rating: "4.1",
  ),
  Barbershop(
    name: "Pablo Escobar",
    image: "assets/barbero4.jpg",
    rating: "4.0",
  ),
  Barbershop(
    name: "Alvaro Paraco",
    image: "assets/barbero5.jpg",
    rating: "4.3",
  ),
];
