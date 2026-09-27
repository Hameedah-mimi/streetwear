class CategoryModel {
  final String title;
  final String imagePath;

  const CategoryModel({required this.title, required this.imagePath});
}

List<CategoryModel> categories = [
  CategoryModel(
    title: "Baby wears",
    imagePath: "assets/images/baby_wears.jpeg",
  ),
  CategoryModel(
    title: "Female wears",
    imagePath: "assets/images/female_wears.jpeg",
  ),
  CategoryModel(
    title: "Male wears",
    imagePath: "assets/images/male_wears.jpeg",
  ),
  CategoryModel(
    title: "Jewelry",
    imagePath: "assets/images/jewelry.jpeg",
  ),
  CategoryModel(
    title: "Scents",
    imagePath: "assets/images/scents.jpeg",
  ),
  CategoryModel(
    title: "Shoes",
    imagePath: "assets/images/shoes.jpeg",
  ),
];
