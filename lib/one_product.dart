//класс для описания характеристик товара
class OneProduct{
  String name;    // наименование товара
  String ImgPath; // путь до изображения товара
  bool isLogo;    // наличие логотипа
  int count;      // количесвто товара

  OneProduct(this.name,this.ImgPath,this.isLogo, this.count);
}