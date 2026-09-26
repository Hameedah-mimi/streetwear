class CategoryModels {
  final String title;
  final String imagePath;

  CategoryModels({required this.title, required this.imagePath});
}

List<CategoryModels> categoryModels = [
  CategoryModels(
    title: 'Female wears',
    imagePath: 'assets/images/female_wears.jpeg',
  ),
  CategoryModels(
    title: 'Baby wears',
    imagePath: 'assets/images/baby_wears.jpeg',
  ),
  CategoryModels(
    title: 'Male wears',
    imagePath: 'assets/images/male_wears.jpeg',
  ),
  CategoryModels(
    title: 'Jewelry',
    imagePath: 'assets/images/jewelry.jpeg',
  ),
  CategoryModels(
    title: 'Shoes',
    imagePath: 'assets/images/shoes.jpeg',
  ),
  CategoryModels(
    title: 'Scents',
    imagePath: 'assets/images/scents.jpeg',
  ),
];
