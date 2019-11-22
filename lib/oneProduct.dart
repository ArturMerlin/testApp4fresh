//класс для описания характеристик товара
class OneProduct{
  String name;    // наименование товара
  String imgPath; // путь до изображения товара
  bool isLogo;    // наличие логотипа
  int count;      // количесвто товара

  OneProduct(this.name,this.imgPath,this.isLogo, this.count);
}